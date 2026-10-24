import ECDSAAdd.Arithmetic.Paper935.Arena
import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks
import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition
import ECDSAAdd.Arithmetic.Paper935.HmrHybridF4Compiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBorrow
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedF4Compiler
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceArithmeticPartsChunk6
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomPartsChunk5
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomPartsChunk6
import ECDSAAdd.Arithmetic.Paper935.HmrSourceF4PartsChunk5

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
def s6Step32F4FlagArena : Arena := ⟨s6Step32HeadFvAfter.live∪{877},Finset.union_subset s6Step32HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step32F4_flag : s6Step32HeadFvAfter.checkBorrow 1 [877]=some s6Step32F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step32HeadFvAfter,arenaWires]
  · rfl
theorem s6Step32F4_carry : s6Step32F4FlagArena.checkBorrow 1 [855]=some s6Step32Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step32F4FlagArena,s6Step32HeadFvAfter,arenaWires]
  · change s6Step32Add0Arena.live=(s6Step32HeadFvAfter.live∪{877})∪{855}
    apply hmrArena_union_pair_of_filter_check s6Step32HeadFvAfter s6Step32Add0Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 877 855 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step32F4_owned : (802::881::((s6Step32Add0A++s6Step32Add1A)++(s6Step32Add0B++s6Step32Add1B))).toFinset⊆s6Step32HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step32HeadFvAfter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step32F4_distinct : (802::881::877::855::((s6Step32Add0A++s6Step32Add1A)++(s6Step32Add0B++s6Step32Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step32F4_apart : Disjoint (s6Step32Add0A++s6Step32Add0B).toFinset (s6Step32Add1A++s6Step32Add1B).toFinset := by
  have nd : ((s6Step32Add0A++s6Step32Add0B)++(s6Step32Add1A++s6Step32Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step32F4Plan : HmrHybridF4Plan := ⟨s6Step32F4FlagArena,[877],s6Step32Add0Arena,[855],s6Step32Add0During,s6Step32Add0Work,s6Step32Add1During,s6Step32Add1Work⟩
theorem s6Step32F4_checked : compileHmrHybridF4Log s6Step32HeadFvAfter 802 881 s6Step32Add0A s6Step32Add0B s6Step32Add1A s6Step32Add1B [877] [855] s6Step32Add0Work s6Step32Add1Work=some s6Step32F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step32HeadFvAfter s6Step32F4FlagArena s6Step32Add0Arena s6Step32Add0During s6Step32Add1During 802 881
    s6Step32Add0A s6Step32Add0B s6Step32Add1A s6Step32Add1B [877] [855] s6Step32Add0Work s6Step32Add1Work
    (fun q hq => s6Step32F4_owned (List.mem_toFinset.mpr hq)) s6Step32F4_flag s6Step32F4_carry
    s6Step32F4_distinct s6Step32F4_apart s6Step32Add0_checked s6Step32Add1_checked
def s6Step33F4FlagArena : Arena := ⟨s6Step33HeadFvAfter.live∪{874},Finset.union_subset s6Step33HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step33F4_flag : s6Step33HeadFvAfter.checkBorrow 1 [874]=some s6Step33F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step33HeadFvAfter,arenaWires]
  · rfl
theorem s6Step33F4_carry : s6Step33F4FlagArena.checkBorrow 1 [887]=some s6Step33Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step33F4FlagArena,s6Step33HeadFvAfter,arenaWires]
  · change s6Step33Add0Arena.live=(s6Step33HeadFvAfter.live∪{874})∪{887}
    apply hmrArena_union_pair_of_filter_check s6Step33HeadFvAfter s6Step33Add0Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 874 887 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step33F4_owned : (802::927::((s6Step33Add0A++s6Step33Add1A)++(s6Step33Add0B++s6Step33Add1B))).toFinset⊆s6Step33HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step33HeadFvAfter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step33F4_distinct : (802::927::874::887::((s6Step33Add0A++s6Step33Add1A)++(s6Step33Add0B++s6Step33Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step33F4_apart : Disjoint (s6Step33Add0A++s6Step33Add0B).toFinset (s6Step33Add1A++s6Step33Add1B).toFinset := by
  have nd : ((s6Step33Add0A++s6Step33Add0B)++(s6Step33Add1A++s6Step33Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step33F4Plan : HmrHybridF4Plan := ⟨s6Step33F4FlagArena,[874],s6Step33Add0Arena,[887],s6Step33Add0During,s6Step33Add0Work,s6Step33Add1During,s6Step33Add1Work⟩
theorem s6Step33F4_checked : compileHmrHybridF4Log s6Step33HeadFvAfter 802 927 s6Step33Add0A s6Step33Add0B s6Step33Add1A s6Step33Add1B [874] [887] s6Step33Add0Work s6Step33Add1Work=some s6Step33F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step33HeadFvAfter s6Step33F4FlagArena s6Step33Add0Arena s6Step33Add0During s6Step33Add1During 802 927
    s6Step33Add0A s6Step33Add0B s6Step33Add1A s6Step33Add1B [874] [887] s6Step33Add0Work s6Step33Add1Work
    (fun q hq => s6Step33F4_owned (List.mem_toFinset.mpr hq)) s6Step33F4_flag s6Step33F4_carry
    s6Step33F4_distinct s6Step33F4_apart s6Step33Add0_checked s6Step33Add1_checked
def s6Step34F4FlagArena : Arena := ⟨s6Step34HeadFvAfter.live∪{874},Finset.union_subset s6Step34HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step34F4_flag : s6Step34HeadFvAfter.checkBorrow 1 [874]=some s6Step34F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step34HeadFvAfter,arenaWires]
  · rfl
theorem s6Step34F4_carry : s6Step34F4FlagArena.checkBorrow 1 [887]=some s6Step34Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step34F4FlagArena,s6Step34HeadFvAfter,arenaWires]
  · change s6Step34Add0Arena.live=(s6Step34HeadFvAfter.live∪{874})∪{887}
    apply hmrArena_union_pair_of_filter_check s6Step34HeadFvAfter s6Step34Add0Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 874 887 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step34F4_owned : (802::875::((s6Step34Add0A++s6Step34Add1A)++(s6Step34Add0B++s6Step34Add1B))).toFinset⊆s6Step34HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step34HeadFvAfter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step34F4_distinct : (802::875::874::887::((s6Step34Add0A++s6Step34Add1A)++(s6Step34Add0B++s6Step34Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step34F4_apart : Disjoint (s6Step34Add0A++s6Step34Add0B).toFinset (s6Step34Add1A++s6Step34Add1B).toFinset := by
  have nd : ((s6Step34Add0A++s6Step34Add0B)++(s6Step34Add1A++s6Step34Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step34F4Plan : HmrHybridF4Plan := ⟨s6Step34F4FlagArena,[874],s6Step34Add0Arena,[887],s6Step34Add0During,s6Step34Add0Work,s6Step34Add1During,s6Step34Add1Work⟩
theorem s6Step34F4_checked : compileHmrHybridF4Log s6Step34HeadFvAfter 802 875 s6Step34Add0A s6Step34Add0B s6Step34Add1A s6Step34Add1B [874] [887] s6Step34Add0Work s6Step34Add1Work=some s6Step34F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step34HeadFvAfter s6Step34F4FlagArena s6Step34Add0Arena s6Step34Add0During s6Step34Add1During 802 875
    s6Step34Add0A s6Step34Add0B s6Step34Add1A s6Step34Add1B [874] [887] s6Step34Add0Work s6Step34Add1Work
    (fun q hq => s6Step34F4_owned (List.mem_toFinset.mpr hq)) s6Step34F4_flag s6Step34F4_carry
    s6Step34F4_distinct s6Step34F4_apart s6Step34Add0_checked s6Step34Add1_checked
def s6Step35F4FlagArena : Arena := ⟨s6Step35HeadFvAfter.live∪{874},Finset.union_subset s6Step35HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step35F4_flag : s6Step35HeadFvAfter.checkBorrow 1 [874]=some s6Step35F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step35HeadFvAfter,s6Step34HeadFvAfter,arenaWires]
  · rfl
theorem s6Step35F4_carry : s6Step35F4FlagArena.checkBorrow 1 [887]=some s6Step35Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step35F4FlagArena,s6Step35HeadFvAfter,s6Step34HeadFvAfter,arenaWires]
  · change s6Step35Add0Arena.live=(s6Step35HeadFvAfter.live∪{874})∪{887}
    apply hmrArena_union_pair_of_filter_check s6Step35HeadFvAfter s6Step35Add0Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 874 887 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step35F4_owned : (802::857::((s6Step35Add0A++s6Step35Add1A)++(s6Step35Add0B++s6Step35Add1B))).toFinset⊆s6Step35HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step35HeadFvAfter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step35F4_distinct : (802::857::874::887::((s6Step35Add0A++s6Step35Add1A)++(s6Step35Add0B++s6Step35Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step35F4_apart : Disjoint (s6Step35Add0A++s6Step35Add0B).toFinset (s6Step35Add1A++s6Step35Add1B).toFinset := by
  have nd : ((s6Step35Add0A++s6Step35Add0B)++(s6Step35Add1A++s6Step35Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step35F4Plan : HmrHybridF4Plan := ⟨s6Step35F4FlagArena,[874],s6Step35Add0Arena,[887],s6Step35Add0During,s6Step35Add0Work,s6Step35Add1During,s6Step35Add1Work⟩
theorem s6Step35F4_checked : compileHmrHybridF4Log s6Step35HeadFvAfter 802 857 s6Step35Add0A s6Step35Add0B s6Step35Add1A s6Step35Add1B [874] [887] s6Step35Add0Work s6Step35Add1Work=some s6Step35F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step35HeadFvAfter s6Step35F4FlagArena s6Step35Add0Arena s6Step35Add0During s6Step35Add1During 802 857
    s6Step35Add0A s6Step35Add0B s6Step35Add1A s6Step35Add1B [874] [887] s6Step35Add0Work s6Step35Add1Work
    (fun q hq => s6Step35F4_owned (List.mem_toFinset.mpr hq)) s6Step35F4_flag s6Step35F4_carry
    s6Step35F4_distinct s6Step35F4_apart s6Step35Add0_checked s6Step35Add1_checked
def s6Step36F4FlagArena : Arena := ⟨s6Step36HeadFvAfter.live∪{877},Finset.union_subset s6Step36HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step36F4_flag : s6Step36HeadFvAfter.checkBorrow 1 [877]=some s6Step36F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step36HeadFvAfter,arenaWires]
  · rfl
theorem s6Step36F4_carry : s6Step36F4FlagArena.checkBorrow 1 [855]=some s6Step36Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step36F4FlagArena,s6Step36HeadFvAfter,arenaWires]
  · change s6Step36Add0Arena.live=(s6Step36HeadFvAfter.live∪{877})∪{855}
    apply hmrArena_union_pair_of_filter_check s6Step36HeadFvAfter s6Step36Add0Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 877 855 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step36F4_owned : (868::793::((s6Step36Add0A++s6Step36Add1A)++(s6Step36Add0B++s6Step36Add1B))).toFinset⊆s6Step36HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step36HeadFvAfter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step36F4_distinct : (868::793::877::855::((s6Step36Add0A++s6Step36Add1A)++(s6Step36Add0B++s6Step36Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step36F4_apart : Disjoint (s6Step36Add0A++s6Step36Add0B).toFinset (s6Step36Add1A++s6Step36Add1B).toFinset := by
  have nd : ((s6Step36Add0A++s6Step36Add0B)++(s6Step36Add1A++s6Step36Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step36F4Plan : HmrHybridF4Plan := ⟨s6Step36F4FlagArena,[877],s6Step36Add0Arena,[855],s6Step36Add0During,s6Step36Add0Work,s6Step36Add1During,s6Step36Add1Work⟩
theorem s6Step36F4_checked : compileHmrHybridF4Log s6Step36HeadFvAfter 868 793 s6Step36Add0A s6Step36Add0B s6Step36Add1A s6Step36Add1B [877] [855] s6Step36Add0Work s6Step36Add1Work=some s6Step36F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step36HeadFvAfter s6Step36F4FlagArena s6Step36Add0Arena s6Step36Add0During s6Step36Add1During 868 793
    s6Step36Add0A s6Step36Add0B s6Step36Add1A s6Step36Add1B [877] [855] s6Step36Add0Work s6Step36Add1Work
    (fun q hq => s6Step36F4_owned (List.mem_toFinset.mpr hq)) s6Step36F4_flag s6Step36F4_carry
    s6Step36F4_distinct s6Step36F4_apart s6Step36Add0_checked s6Step36Add1_checked
def s6Step37F4FlagArena : Arena := ⟨s6Step37HeadFvAfter.live∪{875},Finset.union_subset s6Step37HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step37F4_flag : s6Step37HeadFvAfter.checkBorrow 1 [875]=some s6Step37F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step37HeadFvAfter,arenaWires]
  · rfl
theorem s6Step37F4_carry : s6Step37F4FlagArena.checkBorrow 1 [779]=some s6Step37Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step37F4FlagArena,s6Step37HeadFvAfter,arenaWires]
  · change s6Step37Add0Arena.live=(s6Step37HeadFvAfter.live∪{875})∪{779}
    apply hmrArena_union_pair_of_filter_check s6Step37HeadFvAfter s6Step37Add0Arena (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 875 779 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step37F4_owned : (793::868::((s6Step37Add0A++s6Step37Add1A)++(s6Step37Add0B++s6Step37Add1B))).toFinset⊆s6Step37HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step37HeadFvAfter (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step37F4_distinct : (793::868::875::779::((s6Step37Add0A++s6Step37Add1A)++(s6Step37Add0B++s6Step37Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step37F4_apart : Disjoint (s6Step37Add0A++s6Step37Add0B).toFinset (s6Step37Add1A++s6Step37Add1B).toFinset := by
  have nd : ((s6Step37Add0A++s6Step37Add0B)++(s6Step37Add1A++s6Step37Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step37F4Plan : HmrHybridF4Plan := ⟨s6Step37F4FlagArena,[875],s6Step37Add0Arena,[779],s6Step37Add0During,s6Step37Add0Work,s6Step37Add1During,s6Step37Add1Work⟩
theorem s6Step37F4_checked : compileHmrHybridF4Log s6Step37HeadFvAfter 793 868 s6Step37Add0A s6Step37Add0B s6Step37Add1A s6Step37Add1B [875] [779] s6Step37Add0Work s6Step37Add1Work=some s6Step37F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step37HeadFvAfter s6Step37F4FlagArena s6Step37Add0Arena s6Step37Add0During s6Step37Add1During 793 868
    s6Step37Add0A s6Step37Add0B s6Step37Add1A s6Step37Add1B [875] [779] s6Step37Add0Work s6Step37Add1Work
    (fun q hq => s6Step37F4_owned (List.mem_toFinset.mpr hq)) s6Step37F4_flag s6Step37F4_carry
    s6Step37F4_distinct s6Step37F4_apart s6Step37Add0_checked s6Step37Add1_checked
def s6Step38F4FlagArena : Arena := ⟨s6Step38HeadFvAfter.live∪{877},Finset.union_subset s6Step38HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step38F4_flag : s6Step38HeadFvAfter.checkBorrow 1 [877]=some s6Step38F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step38HeadFvAfter,arenaWires]
  · rfl
theorem s6Step38F4_carry : s6Step38F4FlagArena.checkBorrow 1 [855]=some s6Step38Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step38F4FlagArena,s6Step38HeadFvAfter,arenaWires]
  · change s6Step38Add0Arena.live=(s6Step38HeadFvAfter.live∪{877})∪{855}
    apply hmrArena_union_pair_of_filter_check s6Step38HeadFvAfter s6Step38Add0Arena (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 877 855 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step38F4_owned : (793::858::((s6Step38Add0A++s6Step38Add1A)++(s6Step38Add0B++s6Step38Add1B))).toFinset⊆s6Step38HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step38HeadFvAfter (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step38F4_distinct : (793::858::877::855::((s6Step38Add0A++s6Step38Add1A)++(s6Step38Add0B++s6Step38Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step38F4_apart : Disjoint (s6Step38Add0A++s6Step38Add0B).toFinset (s6Step38Add1A++s6Step38Add1B).toFinset := by
  have nd : ((s6Step38Add0A++s6Step38Add0B)++(s6Step38Add1A++s6Step38Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step38F4Plan : HmrHybridF4Plan := ⟨s6Step38F4FlagArena,[877],s6Step38Add0Arena,[855],s6Step38Add0During,s6Step38Add0Work,s6Step38Add1During,s6Step38Add1Work⟩
theorem s6Step38F4_checked : compileHmrHybridF4Log s6Step38HeadFvAfter 793 858 s6Step38Add0A s6Step38Add0B s6Step38Add1A s6Step38Add1B [877] [855] s6Step38Add0Work s6Step38Add1Work=some s6Step38F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step38HeadFvAfter s6Step38F4FlagArena s6Step38Add0Arena s6Step38Add0During s6Step38Add1During 793 858
    s6Step38Add0A s6Step38Add0B s6Step38Add1A s6Step38Add1B [877] [855] s6Step38Add0Work s6Step38Add1Work
    (fun q hq => s6Step38F4_owned (List.mem_toFinset.mpr hq)) s6Step38F4_flag s6Step38F4_carry
    s6Step38F4_distinct s6Step38F4_apart s6Step38Add0_checked s6Step38Add1_checked
def s6Step39F4FlagArena : Arena := ⟨s6Step39HeadFvAfter.live∪{868},Finset.union_subset s6Step39HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step39F4_flag : s6Step39HeadFvAfter.checkBorrow 1 [868]=some s6Step39F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step39HeadFvAfter,arenaWires]
  · rfl
theorem s6Step39F4_carry : s6Step39F4FlagArena.checkBorrow 1 [887]=some s6Step39Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step39F4FlagArena,s6Step39HeadFvAfter,arenaWires]
  · change s6Step39Add0Arena.live=(s6Step39HeadFvAfter.live∪{868})∪{887}
    apply hmrArena_union_pair_of_filter_check s6Step39HeadFvAfter s6Step39Add0Arena (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 868 887 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step39F4_owned : (858::793::((s6Step39Add0A++s6Step39Add1A)++(s6Step39Add0B++s6Step39Add1B))).toFinset⊆s6Step39HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step39HeadFvAfter (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step39F4_distinct : (858::793::868::887::((s6Step39Add0A++s6Step39Add1A)++(s6Step39Add0B++s6Step39Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step39F4_apart : Disjoint (s6Step39Add0A++s6Step39Add0B).toFinset (s6Step39Add1A++s6Step39Add1B).toFinset := by
  have nd : ((s6Step39Add0A++s6Step39Add0B)++(s6Step39Add1A++s6Step39Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step39F4Plan : HmrHybridF4Plan := ⟨s6Step39F4FlagArena,[868],s6Step39Add0Arena,[887],s6Step39Add0During,s6Step39Add0Work,s6Step39Add1During,s6Step39Add1Work⟩
theorem s6Step39F4_checked : compileHmrHybridF4Log s6Step39HeadFvAfter 858 793 s6Step39Add0A s6Step39Add0B s6Step39Add1A s6Step39Add1B [868] [887] s6Step39Add0Work s6Step39Add1Work=some s6Step39F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step39HeadFvAfter s6Step39F4FlagArena s6Step39Add0Arena s6Step39Add0During s6Step39Add1During 858 793
    s6Step39Add0A s6Step39Add0B s6Step39Add1A s6Step39Add1B [868] [887] s6Step39Add0Work s6Step39Add1Work
    (fun q hq => s6Step39F4_owned (List.mem_toFinset.mpr hq)) s6Step39F4_flag s6Step39F4_carry
    s6Step39F4_distinct s6Step39F4_apart s6Step39Add0_checked s6Step39Add1_checked
def s6Step40F4FlagArena : Arena := ⟨s6Step40HeadFvAfter.live∪{877},Finset.union_subset s6Step40HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step40F4_flag : s6Step40HeadFvAfter.checkBorrow 1 [877]=some s6Step40F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step40HeadFvAfter,arenaWires]
  · rfl
theorem s6Step40F4_carry : s6Step40F4FlagArena.checkBorrow 1 [855]=some s6Step40Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step40F4FlagArena,s6Step40HeadFvAfter,arenaWires]
  · change s6Step40Add0Arena.live=(s6Step40HeadFvAfter.live∪{877})∪{855}
    apply hmrArena_union_pair_of_filter_check s6Step40HeadFvAfter s6Step40Add0Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 877 855 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step40F4_owned : (845::779::((s6Step40Add0A++s6Step40Add1A)++(s6Step40Add0B++s6Step40Add1B))).toFinset⊆s6Step40HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step40HeadFvAfter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step40F4_distinct : (845::779::877::855::((s6Step40Add0A++s6Step40Add1A)++(s6Step40Add0B++s6Step40Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step40F4_apart : Disjoint (s6Step40Add0A++s6Step40Add0B).toFinset (s6Step40Add1A++s6Step40Add1B).toFinset := by
  have nd : ((s6Step40Add0A++s6Step40Add0B)++(s6Step40Add1A++s6Step40Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step40F4Plan : HmrHybridF4Plan := ⟨s6Step40F4FlagArena,[877],s6Step40Add0Arena,[855],s6Step40Add0During,s6Step40Add0Work,s6Step40Add1During,s6Step40Add1Work⟩
theorem s6Step40F4_checked : compileHmrHybridF4Log s6Step40HeadFvAfter 845 779 s6Step40Add0A s6Step40Add0B s6Step40Add1A s6Step40Add1B [877] [855] s6Step40Add0Work s6Step40Add1Work=some s6Step40F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step40HeadFvAfter s6Step40F4FlagArena s6Step40Add0Arena s6Step40Add0During s6Step40Add1During 845 779
    s6Step40Add0A s6Step40Add0B s6Step40Add1A s6Step40Add1B [877] [855] s6Step40Add0Work s6Step40Add1Work
    (fun q hq => s6Step40F4_owned (List.mem_toFinset.mpr hq)) s6Step40F4_flag s6Step40F4_carry
    s6Step40F4_distinct s6Step40F4_apart s6Step40Add0_checked s6Step40Add1_checked
def s6Step41F4FlagArena : Arena := ⟨s6Step41HeadFvAfter.live∪{877},Finset.union_subset s6Step41HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step41F4_flag : s6Step41HeadFvAfter.checkBorrow 1 [877]=some s6Step41F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step41HeadFvAfter,s6Step40HeadFvAfter,arenaWires]
  · rfl
theorem s6Step41F4_carry : s6Step41F4FlagArena.checkBorrow 1 [855]=some s6Step41Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step41F4FlagArena,s6Step41HeadFvAfter,s6Step40HeadFvAfter,arenaWires]
  · change s6Step41Add0Arena.live=(s6Step41HeadFvAfter.live∪{877})∪{855}
    apply hmrArena_union_pair_of_filter_check s6Step41HeadFvAfter s6Step41Add0Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 877 855 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step41F4_owned : (845::908::((s6Step41Add0A++s6Step41Add1A)++(s6Step41Add0B++s6Step41Add1B))).toFinset⊆s6Step41HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step41HeadFvAfter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step41F4_distinct : (845::908::877::855::((s6Step41Add0A++s6Step41Add1A)++(s6Step41Add0B++s6Step41Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step41F4_apart : Disjoint (s6Step41Add0A++s6Step41Add0B).toFinset (s6Step41Add1A++s6Step41Add1B).toFinset := by
  have nd : ((s6Step41Add0A++s6Step41Add0B)++(s6Step41Add1A++s6Step41Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step41F4Plan : HmrHybridF4Plan := ⟨s6Step41F4FlagArena,[877],s6Step41Add0Arena,[855],s6Step41Add0During,s6Step41Add0Work,s6Step41Add1During,s6Step41Add1Work⟩
theorem s6Step41F4_checked : compileHmrHybridF4Log s6Step41HeadFvAfter 845 908 s6Step41Add0A s6Step41Add0B s6Step41Add1A s6Step41Add1B [877] [855] s6Step41Add0Work s6Step41Add1Work=some s6Step41F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step41HeadFvAfter s6Step41F4FlagArena s6Step41Add0Arena s6Step41Add0During s6Step41Add1During 845 908
    s6Step41Add0A s6Step41Add0B s6Step41Add1A s6Step41Add1B [877] [855] s6Step41Add0Work s6Step41Add1Work
    (fun q hq => s6Step41F4_owned (List.mem_toFinset.mpr hq)) s6Step41F4_flag s6Step41F4_carry
    s6Step41F4_distinct s6Step41F4_apart s6Step41Add0_checked s6Step41Add1_checked
def s6Step42F4FlagArena : Arena := ⟨s6Step42HeadFvAfter.live∪{877},Finset.union_subset s6Step42HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step42F4_flag : s6Step42HeadFvAfter.checkBorrow 1 [877]=some s6Step42F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step42HeadFvAfter,arenaWires]
  · rfl
theorem s6Step42F4_carry : s6Step42F4FlagArena.checkBorrow 1 [855]=some s6Step42Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step42F4FlagArena,s6Step42HeadFvAfter,arenaWires]
  · change s6Step42Add0Arena.live=(s6Step42HeadFvAfter.live∪{877})∪{855}
    apply hmrArena_union_pair_of_filter_check s6Step42HeadFvAfter s6Step42Add0Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 877 855 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step42F4_owned : (845::779::((s6Step42Add0A++s6Step42Add1A)++(s6Step42Add0B++s6Step42Add1B))).toFinset⊆s6Step42HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step42HeadFvAfter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step42F4_distinct : (845::779::877::855::((s6Step42Add0A++s6Step42Add1A)++(s6Step42Add0B++s6Step42Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step42F4_apart : Disjoint (s6Step42Add0A++s6Step42Add0B).toFinset (s6Step42Add1A++s6Step42Add1B).toFinset := by
  have nd : ((s6Step42Add0A++s6Step42Add0B)++(s6Step42Add1A++s6Step42Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step42F4Plan : HmrHybridF4Plan := ⟨s6Step42F4FlagArena,[877],s6Step42Add0Arena,[855],s6Step42Add0During,s6Step42Add0Work,s6Step42Add1During,s6Step42Add1Work⟩
theorem s6Step42F4_checked : compileHmrHybridF4Log s6Step42HeadFvAfter 845 779 s6Step42Add0A s6Step42Add0B s6Step42Add1A s6Step42Add1B [877] [855] s6Step42Add0Work s6Step42Add1Work=some s6Step42F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step42HeadFvAfter s6Step42F4FlagArena s6Step42Add0Arena s6Step42Add0During s6Step42Add1During 845 779
    s6Step42Add0A s6Step42Add0B s6Step42Add1A s6Step42Add1B [877] [855] s6Step42Add0Work s6Step42Add1Work
    (fun q hq => s6Step42F4_owned (List.mem_toFinset.mpr hq)) s6Step42F4_flag s6Step42F4_carry
    s6Step42F4_distinct s6Step42F4_apart s6Step42Add0_checked s6Step42Add1_checked
def s6Step43F4FlagArena : Arena := ⟨s6Step43HeadFvAfter.live∪{877},Finset.union_subset s6Step43HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step43F4_flag : s6Step43HeadFvAfter.checkBorrow 1 [877]=some s6Step43F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step43HeadFvAfter,s6Step42HeadFvAfter,arenaWires]
  · rfl
theorem s6Step43F4_carry : s6Step43F4FlagArena.checkBorrow 1 [855]=some s6Step43Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step43F4FlagArena,s6Step43HeadFvAfter,s6Step42HeadFvAfter,arenaWires]
  · change s6Step43Add0Arena.live=(s6Step43HeadFvAfter.live∪{877})∪{855}
    apply hmrArena_union_pair_of_filter_check s6Step43HeadFvAfter s6Step43Add0Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 877 855 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step43F4_owned : (845::890::((s6Step43Add0A++s6Step43Add1A)++(s6Step43Add0B++s6Step43Add1B))).toFinset⊆s6Step43HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step43HeadFvAfter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step43F4_distinct : (845::890::877::855::((s6Step43Add0A++s6Step43Add1A)++(s6Step43Add0B++s6Step43Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step43F4_apart : Disjoint (s6Step43Add0A++s6Step43Add0B).toFinset (s6Step43Add1A++s6Step43Add1B).toFinset := by
  have nd : ((s6Step43Add0A++s6Step43Add0B)++(s6Step43Add1A++s6Step43Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step43F4Plan : HmrHybridF4Plan := ⟨s6Step43F4FlagArena,[877],s6Step43Add0Arena,[855],s6Step43Add0During,s6Step43Add0Work,s6Step43Add1During,s6Step43Add1Work⟩
theorem s6Step43F4_checked : compileHmrHybridF4Log s6Step43HeadFvAfter 845 890 s6Step43Add0A s6Step43Add0B s6Step43Add1A s6Step43Add1B [877] [855] s6Step43Add0Work s6Step43Add1Work=some s6Step43F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step43HeadFvAfter s6Step43F4FlagArena s6Step43Add0Arena s6Step43Add0During s6Step43Add1During 845 890
    s6Step43Add0A s6Step43Add0B s6Step43Add1A s6Step43Add1B [877] [855] s6Step43Add0Work s6Step43Add1Work
    (fun q hq => s6Step43F4_owned (List.mem_toFinset.mpr hq)) s6Step43F4_flag s6Step43F4_carry
    s6Step43F4_distinct s6Step43F4_apart s6Step43Add0_checked s6Step43Add1_checked
def s6Step44F4FlagArena : Arena := ⟨s6Step44HeadFvAfter.live∪{868},Finset.union_subset s6Step44HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step44F4_flag : s6Step44HeadFvAfter.checkBorrow 1 [868]=some s6Step44F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step44HeadFvAfter,arenaWires]
  · rfl
theorem s6Step44F4_carry : s6Step44F4FlagArena.checkBorrow 1 [805]=some s6Step44Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step44F4FlagArena,s6Step44HeadFvAfter,arenaWires]
  · change s6Step44Add0Arena.live=(s6Step44HeadFvAfter.live∪{868})∪{805}
    apply hmrArena_union_pair_of_filter_check s6Step44HeadFvAfter s6Step44Add0Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 868 805 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step44F4_owned : (845::873::((s6Step44Add0A++s6Step44Add1A)++(s6Step44Add0B++s6Step44Add1B))).toFinset⊆s6Step44HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step44HeadFvAfter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step44F4_distinct : (845::873::868::805::((s6Step44Add0A++s6Step44Add1A)++(s6Step44Add0B++s6Step44Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step44F4_apart : Disjoint (s6Step44Add0A++s6Step44Add0B).toFinset (s6Step44Add1A++s6Step44Add1B).toFinset := by
  have nd : ((s6Step44Add0A++s6Step44Add0B)++(s6Step44Add1A++s6Step44Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step44F4Plan : HmrHybridF4Plan := ⟨s6Step44F4FlagArena,[868],s6Step44Add0Arena,[805],s6Step44Add0During,s6Step44Add0Work,s6Step44Add1During,s6Step44Add1Work⟩
theorem s6Step44F4_checked : compileHmrHybridF4Log s6Step44HeadFvAfter 845 873 s6Step44Add0A s6Step44Add0B s6Step44Add1A s6Step44Add1B [868] [805] s6Step44Add0Work s6Step44Add1Work=some s6Step44F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step44HeadFvAfter s6Step44F4FlagArena s6Step44Add0Arena s6Step44Add0During s6Step44Add1During 845 873
    s6Step44Add0A s6Step44Add0B s6Step44Add1A s6Step44Add1B [868] [805] s6Step44Add0Work s6Step44Add1Work
    (fun q hq => s6Step44F4_owned (List.mem_toFinset.mpr hq)) s6Step44F4_flag s6Step44F4_carry
    s6Step44F4_distinct s6Step44F4_apart s6Step44Add0_checked s6Step44Add1_checked
def s6Step45F4FlagArena : Arena := ⟨s6Step45HeadFvAfter.live∪{868},Finset.union_subset s6Step45HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step45F4_flag : s6Step45HeadFvAfter.checkBorrow 1 [868]=some s6Step45F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step45HeadFvAfter,s6Step44HeadFvAfter,arenaWires]
  · rfl
theorem s6Step45F4_carry : s6Step45F4FlagArena.checkBorrow 1 [805]=some s6Step45Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step45F4FlagArena,s6Step45HeadFvAfter,s6Step44HeadFvAfter,arenaWires]
  · change s6Step45Add0Arena.live=(s6Step45HeadFvAfter.live∪{868})∪{805}
    apply hmrArena_union_pair_of_filter_check s6Step45HeadFvAfter s6Step45Add0Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 868 805 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step45F4_owned : (845::856::((s6Step45Add0A++s6Step45Add1A)++(s6Step45Add0B++s6Step45Add1B))).toFinset⊆s6Step45HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step45HeadFvAfter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step45F4_distinct : (845::856::868::805::((s6Step45Add0A++s6Step45Add1A)++(s6Step45Add0B++s6Step45Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step45F4_apart : Disjoint (s6Step45Add0A++s6Step45Add0B).toFinset (s6Step45Add1A++s6Step45Add1B).toFinset := by
  have nd : ((s6Step45Add0A++s6Step45Add0B)++(s6Step45Add1A++s6Step45Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step45F4Plan : HmrHybridF4Plan := ⟨s6Step45F4FlagArena,[868],s6Step45Add0Arena,[805],s6Step45Add0During,s6Step45Add0Work,s6Step45Add1During,s6Step45Add1Work⟩
theorem s6Step45F4_checked : compileHmrHybridF4Log s6Step45HeadFvAfter 845 856 s6Step45Add0A s6Step45Add0B s6Step45Add1A s6Step45Add1B [868] [805] s6Step45Add0Work s6Step45Add1Work=some s6Step45F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step45HeadFvAfter s6Step45F4FlagArena s6Step45Add0Arena s6Step45Add0During s6Step45Add1During 845 856
    s6Step45Add0A s6Step45Add0B s6Step45Add1A s6Step45Add1B [868] [805] s6Step45Add0Work s6Step45Add1Work
    (fun q hq => s6Step45F4_owned (List.mem_toFinset.mpr hq)) s6Step45F4_flag s6Step45F4_carry
    s6Step45F4_distinct s6Step45F4_apart s6Step45Add0_checked s6Step45Add1_checked
def s6Step46F4FlagArena : Arena := ⟨s6Step46HeadFvAfter.live∪{868},Finset.union_subset s6Step46HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step46F4_flag : s6Step46HeadFvAfter.checkBorrow 1 [868]=some s6Step46F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step46HeadFvAfter,arenaWires]
  · rfl
theorem s6Step46F4_carry : s6Step46F4FlagArena.checkBorrow 1 [805]=some s6Step46Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step46F4FlagArena,s6Step46HeadFvAfter,arenaWires]
  · change s6Step46Add0Arena.live=(s6Step46HeadFvAfter.live∪{868})∪{805}
    apply hmrArena_union_pair_of_filter_check s6Step46HeadFvAfter s6Step46Add0Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 868 805 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step46F4_owned : (845::863::((s6Step46Add0A++s6Step46Add1A)++(s6Step46Add0B++s6Step46Add1B))).toFinset⊆s6Step46HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step46HeadFvAfter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step46F4_distinct : (845::863::868::805::((s6Step46Add0A++s6Step46Add1A)++(s6Step46Add0B++s6Step46Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step46F4_apart : Disjoint (s6Step46Add0A++s6Step46Add0B).toFinset (s6Step46Add1A++s6Step46Add1B).toFinset := by
  have nd : ((s6Step46Add0A++s6Step46Add0B)++(s6Step46Add1A++s6Step46Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step46F4Plan : HmrHybridF4Plan := ⟨s6Step46F4FlagArena,[868],s6Step46Add0Arena,[805],s6Step46Add0During,s6Step46Add0Work,s6Step46Add1During,s6Step46Add1Work⟩
theorem s6Step46F4_checked : compileHmrHybridF4Log s6Step46HeadFvAfter 845 863 s6Step46Add0A s6Step46Add0B s6Step46Add1A s6Step46Add1B [868] [805] s6Step46Add0Work s6Step46Add1Work=some s6Step46F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step46HeadFvAfter s6Step46F4FlagArena s6Step46Add0Arena s6Step46Add0During s6Step46Add1During 845 863
    s6Step46Add0A s6Step46Add0B s6Step46Add1A s6Step46Add1B [868] [805] s6Step46Add0Work s6Step46Add1Work
    (fun q hq => s6Step46F4_owned (List.mem_toFinset.mpr hq)) s6Step46F4_flag s6Step46F4_carry
    s6Step46F4_distinct s6Step46F4_apart s6Step46Add0_checked s6Step46Add1_checked

end ECDSAAdd.Arithmetic.Paper935
