import ECDSAAdd.Arithmetic.Paper935.Arena
import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks
import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition
import ECDSAAdd.Arithmetic.Paper935.HmrHybridF4Compiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBorrow
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedF4Compiler
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceArithmeticPartsChunk7
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomPartsChunk7
import ECDSAAdd.Arithmetic.Paper935.HmrSourceF4PartsChunk6

namespace ECDSAAdd.Arithmetic.Paper935
def s6Step47F4FlagArena : Arena := ⟨s6Step47HeadFvAfter.live∪{793},Finset.union_subset s6Step47HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step47F4_flag : s6Step47HeadFvAfter.checkBorrow 1 [793]=some s6Step47F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step47HeadFvAfter,arenaWires]
  · rfl
theorem s6Step47F4_carry : s6Step47F4FlagArena.checkBorrow 1 [875]=some s6Step47Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step47F4FlagArena,s6Step47HeadFvAfter,arenaWires]
  · change s6Step47Add0Arena.live=(s6Step47HeadFvAfter.live∪{793})∪{875}
    apply hmrArena_union_pair_of_filter_check s6Step47HeadFvAfter s6Step47Add0Arena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 793 875 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step47F4_owned : (863::845::((s6Step47Add0A++s6Step47Add1A)++(s6Step47Add0B++s6Step47Add1B))).toFinset⊆s6Step47HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step47HeadFvAfter (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step47F4_distinct : (863::845::793::875::((s6Step47Add0A++s6Step47Add1A)++(s6Step47Add0B++s6Step47Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step47F4_apart : Disjoint (s6Step47Add0A++s6Step47Add0B).toFinset (s6Step47Add1A++s6Step47Add1B).toFinset := by
  have nd : ((s6Step47Add0A++s6Step47Add0B)++(s6Step47Add1A++s6Step47Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step47F4Plan : HmrHybridF4Plan := ⟨s6Step47F4FlagArena,[793],s6Step47Add0Arena,[875],s6Step47Add0During,s6Step47Add0Work,s6Step47Add1During,s6Step47Add1Work⟩
theorem s6Step47F4_checked : compileHmrHybridF4Log s6Step47HeadFvAfter 863 845 s6Step47Add0A s6Step47Add0B s6Step47Add1A s6Step47Add1B [793] [875] s6Step47Add0Work s6Step47Add1Work=some s6Step47F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step47HeadFvAfter s6Step47F4FlagArena s6Step47Add0Arena s6Step47Add0During s6Step47Add1During 863 845
    s6Step47Add0A s6Step47Add0B s6Step47Add1A s6Step47Add1B [793] [875] s6Step47Add0Work s6Step47Add1Work
    (fun q hq => s6Step47F4_owned (List.mem_toFinset.mpr hq)) s6Step47F4_flag s6Step47F4_carry
    s6Step47F4_distinct s6Step47F4_apart s6Step47Add0_checked s6Step47Add1_checked
def s6Step48F4FlagArena : Arena := ⟨s6Step48HeadFvAfter.live∪{868},Finset.union_subset s6Step48HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step48F4_flag : s6Step48HeadFvAfter.checkBorrow 1 [868]=some s6Step48F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step48HeadFvAfter,arenaWires]
  · rfl
theorem s6Step48F4_carry : s6Step48F4FlagArena.checkBorrow 1 [805]=some s6Step48Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step48F4FlagArena,s6Step48HeadFvAfter,arenaWires]
  · change s6Step48Add0Arena.live=(s6Step48HeadFvAfter.live∪{868})∪{805}
    apply hmrArena_union_pair_of_filter_check s6Step48HeadFvAfter s6Step48Add0Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 868 805 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step48F4_owned : (845::863::((s6Step48Add0A++s6Step48Add1A)++(s6Step48Add0B++s6Step48Add1B))).toFinset⊆s6Step48HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step48HeadFvAfter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step48F4_distinct : (845::863::868::805::((s6Step48Add0A++s6Step48Add1A)++(s6Step48Add0B++s6Step48Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step48F4_apart : Disjoint (s6Step48Add0A++s6Step48Add0B).toFinset (s6Step48Add1A++s6Step48Add1B).toFinset := by
  have nd : ((s6Step48Add0A++s6Step48Add0B)++(s6Step48Add1A++s6Step48Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step48F4Plan : HmrHybridF4Plan := ⟨s6Step48F4FlagArena,[868],s6Step48Add0Arena,[805],s6Step48Add0During,s6Step48Add0Work,s6Step48Add1During,s6Step48Add1Work⟩
theorem s6Step48F4_checked : compileHmrHybridF4Log s6Step48HeadFvAfter 845 863 s6Step48Add0A s6Step48Add0B s6Step48Add1A s6Step48Add1B [868] [805] s6Step48Add0Work s6Step48Add1Work=some s6Step48F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step48HeadFvAfter s6Step48F4FlagArena s6Step48Add0Arena s6Step48Add0During s6Step48Add1During 845 863
    s6Step48Add0A s6Step48Add0B s6Step48Add1A s6Step48Add1B [868] [805] s6Step48Add0Work s6Step48Add1Work
    (fun q hq => s6Step48F4_owned (List.mem_toFinset.mpr hq)) s6Step48F4_flag s6Step48F4_carry
    s6Step48F4_distinct s6Step48F4_apart s6Step48Add0_checked s6Step48Add1_checked
def s6Step49F4FlagArena : Arena := ⟨s6Step49HeadFvAfter.live∪{868},Finset.union_subset s6Step49HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step49F4_flag : s6Step49HeadFvAfter.checkBorrow 1 [868]=some s6Step49F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step49HeadFvAfter,s6Step48HeadFvAfter,arenaWires]
  · rfl
theorem s6Step49F4_carry : s6Step49F4FlagArena.checkBorrow 1 [805]=some s6Step49Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step49F4FlagArena,s6Step49HeadFvAfter,s6Step48HeadFvAfter,arenaWires]
  · change s6Step49Add0Arena.live=(s6Step49HeadFvAfter.live∪{868})∪{805}
    apply hmrArena_union_pair_of_filter_check s6Step49HeadFvAfter s6Step49Add0Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 868 805 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step49F4_owned : (845::789::((s6Step49Add0A++s6Step49Add1A)++(s6Step49Add0B++s6Step49Add1B))).toFinset⊆s6Step49HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step49HeadFvAfter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step49F4_distinct : (845::789::868::805::((s6Step49Add0A++s6Step49Add1A)++(s6Step49Add0B++s6Step49Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step49F4_apart : Disjoint (s6Step49Add0A++s6Step49Add0B).toFinset (s6Step49Add1A++s6Step49Add1B).toFinset := by
  have nd : ((s6Step49Add0A++s6Step49Add0B)++(s6Step49Add1A++s6Step49Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step49F4Plan : HmrHybridF4Plan := ⟨s6Step49F4FlagArena,[868],s6Step49Add0Arena,[805],s6Step49Add0During,s6Step49Add0Work,s6Step49Add1During,s6Step49Add1Work⟩
theorem s6Step49F4_checked : compileHmrHybridF4Log s6Step49HeadFvAfter 845 789 s6Step49Add0A s6Step49Add0B s6Step49Add1A s6Step49Add1B [868] [805] s6Step49Add0Work s6Step49Add1Work=some s6Step49F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step49HeadFvAfter s6Step49F4FlagArena s6Step49Add0Arena s6Step49Add0During s6Step49Add1During 845 789
    s6Step49Add0A s6Step49Add0B s6Step49Add1A s6Step49Add1B [868] [805] s6Step49Add0Work s6Step49Add1Work
    (fun q hq => s6Step49F4_owned (List.mem_toFinset.mpr hq)) s6Step49F4_flag s6Step49F4_carry
    s6Step49F4_distinct s6Step49F4_apart s6Step49Add0_checked s6Step49Add1_checked
def s6Step50F4FlagArena : Arena := ⟨s6Step50HeadFvAfter.live∪{868},Finset.union_subset s6Step50HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step50F4_flag : s6Step50HeadFvAfter.checkBorrow 1 [868]=some s6Step50F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step50HeadFvAfter,arenaWires]
  · rfl
theorem s6Step50F4_carry : s6Step50F4FlagArena.checkBorrow 1 [805]=some s6Step50Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step50F4FlagArena,s6Step50HeadFvAfter,arenaWires]
  · change s6Step50Add0Arena.live=(s6Step50HeadFvAfter.live∪{868})∪{805}
    apply hmrArena_union_pair_of_filter_check s6Step50HeadFvAfter s6Step50Add0Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 868 805 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step50F4_owned : (845::880::((s6Step50Add0A++s6Step50Add1A)++(s6Step50Add0B++s6Step50Add1B))).toFinset⊆s6Step50HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step50HeadFvAfter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step50F4_distinct : (845::880::868::805::((s6Step50Add0A++s6Step50Add1A)++(s6Step50Add0B++s6Step50Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step50F4_apart : Disjoint (s6Step50Add0A++s6Step50Add0B).toFinset (s6Step50Add1A++s6Step50Add1B).toFinset := by
  have nd : ((s6Step50Add0A++s6Step50Add0B)++(s6Step50Add1A++s6Step50Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step50F4Plan : HmrHybridF4Plan := ⟨s6Step50F4FlagArena,[868],s6Step50Add0Arena,[805],s6Step50Add0During,s6Step50Add0Work,s6Step50Add1During,s6Step50Add1Work⟩
theorem s6Step50F4_checked : compileHmrHybridF4Log s6Step50HeadFvAfter 845 880 s6Step50Add0A s6Step50Add0B s6Step50Add1A s6Step50Add1B [868] [805] s6Step50Add0Work s6Step50Add1Work=some s6Step50F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step50HeadFvAfter s6Step50F4FlagArena s6Step50Add0Arena s6Step50Add0During s6Step50Add1During 845 880
    s6Step50Add0A s6Step50Add0B s6Step50Add1A s6Step50Add1B [868] [805] s6Step50Add0Work s6Step50Add1Work
    (fun q hq => s6Step50F4_owned (List.mem_toFinset.mpr hq)) s6Step50F4_flag s6Step50F4_carry
    s6Step50F4_distinct s6Step50F4_apart s6Step50Add0_checked s6Step50Add1_checked
def s6Step51F4FlagArena : Arena := ⟨s6Step51HeadFvAfter.live∪{868},Finset.union_subset s6Step51HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step51F4_flag : s6Step51HeadFvAfter.checkBorrow 1 [868]=some s6Step51F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step51HeadFvAfter,s6Step50HeadFvAfter,arenaWires]
  · rfl
theorem s6Step51F4_carry : s6Step51F4FlagArena.checkBorrow 1 [805]=some s6Step51Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step51F4FlagArena,s6Step51HeadFvAfter,s6Step50HeadFvAfter,arenaWires]
  · change s6Step51Add0Arena.live=(s6Step51HeadFvAfter.live∪{868})∪{805}
    apply hmrArena_union_pair_of_filter_check s6Step51HeadFvAfter s6Step51Add0Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 868 805 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step51F4_owned : (818::789::((s6Step51Add0A++s6Step51Add1A)++(s6Step51Add0B++s6Step51Add1B))).toFinset⊆s6Step51HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step51HeadFvAfter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step51F4_distinct : (818::789::868::805::((s6Step51Add0A++s6Step51Add1A)++(s6Step51Add0B++s6Step51Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step51F4_apart : Disjoint (s6Step51Add0A++s6Step51Add0B).toFinset (s6Step51Add1A++s6Step51Add1B).toFinset := by
  have nd : ((s6Step51Add0A++s6Step51Add0B)++(s6Step51Add1A++s6Step51Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step51F4Plan : HmrHybridF4Plan := ⟨s6Step51F4FlagArena,[868],s6Step51Add0Arena,[805],s6Step51Add0During,s6Step51Add0Work,s6Step51Add1During,s6Step51Add1Work⟩
theorem s6Step51F4_checked : compileHmrHybridF4Log s6Step51HeadFvAfter 818 789 s6Step51Add0A s6Step51Add0B s6Step51Add1A s6Step51Add1B [868] [805] s6Step51Add0Work s6Step51Add1Work=some s6Step51F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step51HeadFvAfter s6Step51F4FlagArena s6Step51Add0Arena s6Step51Add0During s6Step51Add1During 818 789
    s6Step51Add0A s6Step51Add0B s6Step51Add1A s6Step51Add1B [868] [805] s6Step51Add0Work s6Step51Add1Work
    (fun q hq => s6Step51F4_owned (List.mem_toFinset.mpr hq)) s6Step51F4_flag s6Step51F4_carry
    s6Step51F4_distinct s6Step51F4_apart s6Step51Add0_checked s6Step51Add1_checked
def s6Step52F4FlagArena : Arena := ⟨s6Step52HeadFvAfter.live∪{868},Finset.union_subset s6Step52HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step52F4_flag : s6Step52HeadFvAfter.checkBorrow 1 [868]=some s6Step52F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step52HeadFvAfter,arenaWires]
  · rfl
theorem s6Step52F4_carry : s6Step52F4FlagArena.checkBorrow 1 [805]=some s6Step52Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step52F4FlagArena,s6Step52HeadFvAfter,arenaWires]
  · change s6Step52Add0Arena.live=(s6Step52HeadFvAfter.live∪{868})∪{805}
    apply hmrArena_union_pair_of_filter_check s6Step52HeadFvAfter s6Step52Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 868 805 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step52F4_owned : (818::864::((s6Step52Add0A++s6Step52Add1A)++(s6Step52Add0B++s6Step52Add1B))).toFinset⊆s6Step52HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step52HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step52F4_distinct : (818::864::868::805::((s6Step52Add0A++s6Step52Add1A)++(s6Step52Add0B++s6Step52Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step52F4_apart : Disjoint (s6Step52Add0A++s6Step52Add0B).toFinset (s6Step52Add1A++s6Step52Add1B).toFinset := by
  have nd : ((s6Step52Add0A++s6Step52Add0B)++(s6Step52Add1A++s6Step52Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step52F4Plan : HmrHybridF4Plan := ⟨s6Step52F4FlagArena,[868],s6Step52Add0Arena,[805],s6Step52Add0During,s6Step52Add0Work,s6Step52Add1During,s6Step52Add1Work⟩
theorem s6Step52F4_checked : compileHmrHybridF4Log s6Step52HeadFvAfter 818 864 s6Step52Add0A s6Step52Add0B s6Step52Add1A s6Step52Add1B [868] [805] s6Step52Add0Work s6Step52Add1Work=some s6Step52F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step52HeadFvAfter s6Step52F4FlagArena s6Step52Add0Arena s6Step52Add0During s6Step52Add1During 818 864
    s6Step52Add0A s6Step52Add0B s6Step52Add1A s6Step52Add1B [868] [805] s6Step52Add0Work s6Step52Add1Work
    (fun q hq => s6Step52F4_owned (List.mem_toFinset.mpr hq)) s6Step52F4_flag s6Step52F4_carry
    s6Step52F4_distinct s6Step52F4_apart s6Step52Add0_checked s6Step52Add1_checked
def s6Step53F4FlagArena : Arena := ⟨s6Step53HeadFvAfter.live∪{793},Finset.union_subset s6Step53HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step53F4_flag : s6Step53HeadFvAfter.checkBorrow 1 [793]=some s6Step53F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step53HeadFvAfter,arenaWires]
  · rfl
theorem s6Step53F4_carry : s6Step53F4FlagArena.checkBorrow 1 [875]=some s6Step53Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step53F4FlagArena,s6Step53HeadFvAfter,arenaWires]
  · change s6Step53Add0Arena.live=(s6Step53HeadFvAfter.live∪{793})∪{875}
    apply hmrArena_union_pair_of_filter_check s6Step53HeadFvAfter s6Step53Add0Arena (fun q => ([(0,782),(785,787),(788,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 793 875 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step53F4_owned : (818::828::((s6Step53Add0A++s6Step53Add1A)++(s6Step53Add0B++s6Step53Add1B))).toFinset⊆s6Step53HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step53HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step53F4_distinct : (818::828::793::875::((s6Step53Add0A++s6Step53Add1A)++(s6Step53Add0B++s6Step53Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step53F4_apart : Disjoint (s6Step53Add0A++s6Step53Add0B).toFinset (s6Step53Add1A++s6Step53Add1B).toFinset := by
  have nd : ((s6Step53Add0A++s6Step53Add0B)++(s6Step53Add1A++s6Step53Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step53F4Plan : HmrHybridF4Plan := ⟨s6Step53F4FlagArena,[793],s6Step53Add0Arena,[875],s6Step53Add0During,s6Step53Add0Work,s6Step53Add1During,s6Step53Add1Work⟩
theorem s6Step53F4_checked : compileHmrHybridF4Log s6Step53HeadFvAfter 818 828 s6Step53Add0A s6Step53Add0B s6Step53Add1A s6Step53Add1B [793] [875] s6Step53Add0Work s6Step53Add1Work=some s6Step53F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step53HeadFvAfter s6Step53F4FlagArena s6Step53Add0Arena s6Step53Add0During s6Step53Add1During 818 828
    s6Step53Add0A s6Step53Add0B s6Step53Add1A s6Step53Add1B [793] [875] s6Step53Add0Work s6Step53Add1Work
    (fun q hq => s6Step53F4_owned (List.mem_toFinset.mpr hq)) s6Step53F4_flag s6Step53F4_carry
    s6Step53F4_distinct s6Step53F4_apart s6Step53Add0_checked s6Step53Add1_checked
def s6Step54F4FlagArena : Arena := ⟨s6Step54HeadFvAfter.live∪{868},Finset.union_subset s6Step54HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step54F4_flag : s6Step54HeadFvAfter.checkBorrow 1 [868]=some s6Step54F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step54HeadFvAfter,arenaWires]
  · rfl
theorem s6Step54F4_carry : s6Step54F4FlagArena.checkBorrow 1 [805]=some s6Step54Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step54F4FlagArena,s6Step54HeadFvAfter,arenaWires]
  · change s6Step54Add0Arena.live=(s6Step54HeadFvAfter.live∪{868})∪{805}
    apply hmrArena_union_pair_of_filter_check s6Step54HeadFvAfter s6Step54Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 868 805 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step54F4_owned : (818::880::((s6Step54Add0A++s6Step54Add1A)++(s6Step54Add0B++s6Step54Add1B))).toFinset⊆s6Step54HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step54HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step54F4_distinct : (818::880::868::805::((s6Step54Add0A++s6Step54Add1A)++(s6Step54Add0B++s6Step54Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step54F4_apart : Disjoint (s6Step54Add0A++s6Step54Add0B).toFinset (s6Step54Add1A++s6Step54Add1B).toFinset := by
  have nd : ((s6Step54Add0A++s6Step54Add0B)++(s6Step54Add1A++s6Step54Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step54F4Plan : HmrHybridF4Plan := ⟨s6Step54F4FlagArena,[868],s6Step54Add0Arena,[805],s6Step54Add0During,s6Step54Add0Work,s6Step54Add1During,s6Step54Add1Work⟩
theorem s6Step54F4_checked : compileHmrHybridF4Log s6Step54HeadFvAfter 818 880 s6Step54Add0A s6Step54Add0B s6Step54Add1A s6Step54Add1B [868] [805] s6Step54Add0Work s6Step54Add1Work=some s6Step54F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step54HeadFvAfter s6Step54F4FlagArena s6Step54Add0Arena s6Step54Add0During s6Step54Add1During 818 880
    s6Step54Add0A s6Step54Add0B s6Step54Add1A s6Step54Add1B [868] [805] s6Step54Add0Work s6Step54Add1Work
    (fun q hq => s6Step54F4_owned (List.mem_toFinset.mpr hq)) s6Step54F4_flag s6Step54F4_carry
    s6Step54F4_distinct s6Step54F4_apart s6Step54Add0_checked s6Step54Add1_checked
def s6Step55F4FlagArena : Arena := ⟨s6Step55HeadFvAfter.live∪{877},Finset.union_subset s6Step55HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step55F4_flag : s6Step55HeadFvAfter.checkBorrow 1 [877]=some s6Step55F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step55HeadFvAfter,arenaWires]
  · rfl
theorem s6Step55F4_carry : s6Step55F4FlagArena.checkBorrow 1 [855]=some s6Step55Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step55F4FlagArena,s6Step55HeadFvAfter,arenaWires]
  · change s6Step55Add0Arena.live=(s6Step55HeadFvAfter.live∪{877})∪{855}
    apply hmrArena_union_pair_of_filter_check s6Step55HeadFvAfter s6Step55Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 877 855 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step55F4_owned : (882::793::((s6Step55Add0A++s6Step55Add1A)++(s6Step55Add0B++s6Step55Add1B))).toFinset⊆s6Step55HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step55HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step55F4_distinct : (882::793::877::855::((s6Step55Add0A++s6Step55Add1A)++(s6Step55Add0B++s6Step55Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step55F4_apart : Disjoint (s6Step55Add0A++s6Step55Add0B).toFinset (s6Step55Add1A++s6Step55Add1B).toFinset := by
  have nd : ((s6Step55Add0A++s6Step55Add0B)++(s6Step55Add1A++s6Step55Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step55F4Plan : HmrHybridF4Plan := ⟨s6Step55F4FlagArena,[877],s6Step55Add0Arena,[855],s6Step55Add0During,s6Step55Add0Work,s6Step55Add1During,s6Step55Add1Work⟩
theorem s6Step55F4_checked : compileHmrHybridF4Log s6Step55HeadFvAfter 882 793 s6Step55Add0A s6Step55Add0B s6Step55Add1A s6Step55Add1B [877] [855] s6Step55Add0Work s6Step55Add1Work=some s6Step55F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step55HeadFvAfter s6Step55F4FlagArena s6Step55Add0Arena s6Step55Add0During s6Step55Add1During 882 793
    s6Step55Add0A s6Step55Add0B s6Step55Add1A s6Step55Add1B [877] [855] s6Step55Add0Work s6Step55Add1Work
    (fun q hq => s6Step55F4_owned (List.mem_toFinset.mpr hq)) s6Step55F4_flag s6Step55F4_carry
    s6Step55F4_distinct s6Step55F4_apart s6Step55Add0_checked s6Step55Add1_checked
def s6Step56F4FlagArena : Arena := ⟨s6Step56HeadFvAfter.live∪{880},Finset.union_subset s6Step56HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step56F4_flag : s6Step56HeadFvAfter.checkBorrow 1 [880]=some s6Step56F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step56HeadFvAfter,arenaWires]
  · rfl
theorem s6Step56F4_carry : s6Step56F4FlagArena.checkBorrow 1 [892]=some s6Step56Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step56F4FlagArena,s6Step56HeadFvAfter,arenaWires]
  · change s6Step56Add0Arena.live=(s6Step56HeadFvAfter.live∪{880})∪{892}
    apply hmrArena_union_pair_of_filter_check s6Step56HeadFvAfter s6Step56Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 880 892 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step56F4_owned : (882::822::((s6Step56Add0A++s6Step56Add1A)++(s6Step56Add0B++s6Step56Add1B))).toFinset⊆s6Step56HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step56HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step56F4_distinct : (882::822::880::892::((s6Step56Add0A++s6Step56Add1A)++(s6Step56Add0B++s6Step56Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step56F4_apart : Disjoint (s6Step56Add0A++s6Step56Add0B).toFinset (s6Step56Add1A++s6Step56Add1B).toFinset := by
  have nd : ((s6Step56Add0A++s6Step56Add0B)++(s6Step56Add1A++s6Step56Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step56F4Plan : HmrHybridF4Plan := ⟨s6Step56F4FlagArena,[880],s6Step56Add0Arena,[892],s6Step56Add0During,s6Step56Add0Work,s6Step56Add1During,s6Step56Add1Work⟩
theorem s6Step56F4_checked : compileHmrHybridF4Log s6Step56HeadFvAfter 882 822 s6Step56Add0A s6Step56Add0B s6Step56Add1A s6Step56Add1B [880] [892] s6Step56Add0Work s6Step56Add1Work=some s6Step56F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step56HeadFvAfter s6Step56F4FlagArena s6Step56Add0Arena s6Step56Add0During s6Step56Add1During 882 822
    s6Step56Add0A s6Step56Add0B s6Step56Add1A s6Step56Add1B [880] [892] s6Step56Add0Work s6Step56Add1Work
    (fun q hq => s6Step56F4_owned (List.mem_toFinset.mpr hq)) s6Step56F4_flag s6Step56F4_carry
    s6Step56F4_distinct s6Step56F4_apart s6Step56Add0_checked s6Step56Add1_checked
def s6Step57F4FlagArena : Arena := ⟨s6Step57HeadFvAfter.live∪{880},Finset.union_subset s6Step57HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step57F4_flag : s6Step57HeadFvAfter.checkBorrow 1 [880]=some s6Step57F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step57HeadFvAfter,s6Step56HeadFvAfter,arenaWires]
  · rfl
theorem s6Step57F4_carry : s6Step57F4FlagArena.checkBorrow 1 [892]=some s6Step57Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step57F4FlagArena,s6Step57HeadFvAfter,s6Step56HeadFvAfter,arenaWires]
  · change s6Step57Add0Arena.live=(s6Step57HeadFvAfter.live∪{880})∪{892}
    apply hmrArena_union_pair_of_filter_check s6Step57HeadFvAfter s6Step57Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 880 892 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step57F4_owned : (882::833::((s6Step57Add0A++s6Step57Add1A)++(s6Step57Add0B++s6Step57Add1B))).toFinset⊆s6Step57HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step57HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step57F4_distinct : (882::833::880::892::((s6Step57Add0A++s6Step57Add1A)++(s6Step57Add0B++s6Step57Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step57F4_apart : Disjoint (s6Step57Add0A++s6Step57Add0B).toFinset (s6Step57Add1A++s6Step57Add1B).toFinset := by
  have nd : ((s6Step57Add0A++s6Step57Add0B)++(s6Step57Add1A++s6Step57Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step57F4Plan : HmrHybridF4Plan := ⟨s6Step57F4FlagArena,[880],s6Step57Add0Arena,[892],s6Step57Add0During,s6Step57Add0Work,s6Step57Add1During,s6Step57Add1Work⟩
theorem s6Step57F4_checked : compileHmrHybridF4Log s6Step57HeadFvAfter 882 833 s6Step57Add0A s6Step57Add0B s6Step57Add1A s6Step57Add1B [880] [892] s6Step57Add0Work s6Step57Add1Work=some s6Step57F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step57HeadFvAfter s6Step57F4FlagArena s6Step57Add0Arena s6Step57Add0During s6Step57Add1During 882 833
    s6Step57Add0A s6Step57Add0B s6Step57Add1A s6Step57Add1B [880] [892] s6Step57Add0Work s6Step57Add1Work
    (fun q hq => s6Step57F4_owned (List.mem_toFinset.mpr hq)) s6Step57F4_flag s6Step57F4_carry
    s6Step57F4_distinct s6Step57F4_apart s6Step57Add0_checked s6Step57Add1_checked
def s6Step58F4FlagArena : Arena := ⟨s6Step58HeadFvAfter.live∪{822},Finset.union_subset s6Step58HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step58F4_flag : s6Step58HeadFvAfter.checkBorrow 1 [822]=some s6Step58F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step58HeadFvAfter,arenaWires]
  · rfl
theorem s6Step58F4_carry : s6Step58F4FlagArena.checkBorrow 1 [805]=some s6Step58Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step58F4FlagArena,s6Step58HeadFvAfter,arenaWires]
  · change s6Step58Add0Arena.live=(s6Step58HeadFvAfter.live∪{822})∪{805}
    apply hmrArena_union_pair_of_filter_check s6Step58HeadFvAfter s6Step58Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 822 805 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step58F4_owned : (882::780::((s6Step58Add0A++s6Step58Add1A)++(s6Step58Add0B++s6Step58Add1B))).toFinset⊆s6Step58HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step58HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step58F4_distinct : (882::780::822::805::((s6Step58Add0A++s6Step58Add1A)++(s6Step58Add0B++s6Step58Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step58F4_apart : Disjoint (s6Step58Add0A++s6Step58Add0B).toFinset (s6Step58Add1A++s6Step58Add1B).toFinset := by
  have nd : ((s6Step58Add0A++s6Step58Add0B)++(s6Step58Add1A++s6Step58Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step58F4Plan : HmrHybridF4Plan := ⟨s6Step58F4FlagArena,[822],s6Step58Add0Arena,[805],s6Step58Add0During,s6Step58Add0Work,s6Step58Add1During,s6Step58Add1Work⟩
theorem s6Step58F4_checked : compileHmrHybridF4Log s6Step58HeadFvAfter 882 780 s6Step58Add0A s6Step58Add0B s6Step58Add1A s6Step58Add1B [822] [805] s6Step58Add0Work s6Step58Add1Work=some s6Step58F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step58HeadFvAfter s6Step58F4FlagArena s6Step58Add0Arena s6Step58Add0During s6Step58Add1During 882 780
    s6Step58Add0A s6Step58Add0B s6Step58Add1A s6Step58Add1B [822] [805] s6Step58Add0Work s6Step58Add1Work
    (fun q hq => s6Step58F4_owned (List.mem_toFinset.mpr hq)) s6Step58F4_flag s6Step58F4_carry
    s6Step58F4_distinct s6Step58F4_apart s6Step58Add0_checked s6Step58Add1_checked
def s6Step59F4FlagArena : Arena := ⟨s6Step59HeadFvAfter.live∪{880},Finset.union_subset s6Step59HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step59F4_flag : s6Step59HeadFvAfter.checkBorrow 1 [880]=some s6Step59F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step59HeadFvAfter,s6Step56HeadFvAfter,arenaWires]
  · rfl
theorem s6Step59F4_carry : s6Step59F4FlagArena.checkBorrow 1 [892]=some s6Step59Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step59F4FlagArena,s6Step59HeadFvAfter,s6Step56HeadFvAfter,arenaWires]
  · change s6Step59Add0Arena.live=(s6Step59HeadFvAfter.live∪{880})∪{892}
    apply hmrArena_union_pair_of_filter_check s6Step59HeadFvAfter s6Step59Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 880 892 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step59F4_owned : (868::875::((s6Step59Add0A++s6Step59Add1A)++(s6Step59Add0B++s6Step59Add1B))).toFinset⊆s6Step59HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step59HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step59F4_distinct : (868::875::880::892::((s6Step59Add0A++s6Step59Add1A)++(s6Step59Add0B++s6Step59Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step59F4_apart : Disjoint (s6Step59Add0A++s6Step59Add0B).toFinset (s6Step59Add1A++s6Step59Add1B).toFinset := by
  have nd : ((s6Step59Add0A++s6Step59Add0B)++(s6Step59Add1A++s6Step59Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step59F4Plan : HmrHybridF4Plan := ⟨s6Step59F4FlagArena,[880],s6Step59Add0Arena,[892],s6Step59Add0During,s6Step59Add0Work,s6Step59Add1During,s6Step59Add1Work⟩
theorem s6Step59F4_checked : compileHmrHybridF4Log s6Step59HeadFvAfter 868 875 s6Step59Add0A s6Step59Add0B s6Step59Add1A s6Step59Add1B [880] [892] s6Step59Add0Work s6Step59Add1Work=some s6Step59F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step59HeadFvAfter s6Step59F4FlagArena s6Step59Add0Arena s6Step59Add0During s6Step59Add1During 868 875
    s6Step59Add0A s6Step59Add0B s6Step59Add1A s6Step59Add1B [880] [892] s6Step59Add0Work s6Step59Add1Work
    (fun q hq => s6Step59F4_owned (List.mem_toFinset.mpr hq)) s6Step59F4_flag s6Step59F4_carry
    s6Step59F4_distinct s6Step59F4_apart s6Step59Add0_checked s6Step59Add1_checked
def s6Step60F4FlagArena : Arena := ⟨s6Step60HeadFvAfter.live∪{877},Finset.union_subset s6Step60HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step60F4_flag : s6Step60HeadFvAfter.checkBorrow 1 [877]=some s6Step60F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step60HeadFvAfter,arenaWires]
  · rfl
theorem s6Step60F4_carry : s6Step60F4FlagArena.checkBorrow 1 [855]=some s6Step60Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step60F4FlagArena,s6Step60HeadFvAfter,arenaWires]
  · change s6Step60Add0Arena.live=(s6Step60HeadFvAfter.live∪{877})∪{855}
    apply hmrArena_union_pair_of_filter_check s6Step60HeadFvAfter s6Step60Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 877 855 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step60F4_owned : (822::886::((s6Step60Add0A++s6Step60Add1A)++(s6Step60Add0B++s6Step60Add1B))).toFinset⊆s6Step60HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step60HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step60F4_distinct : (822::886::877::855::((s6Step60Add0A++s6Step60Add1A)++(s6Step60Add0B++s6Step60Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step60F4_apart : Disjoint (s6Step60Add0A++s6Step60Add0B).toFinset (s6Step60Add1A++s6Step60Add1B).toFinset := by
  have nd : ((s6Step60Add0A++s6Step60Add0B)++(s6Step60Add1A++s6Step60Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step60F4Plan : HmrHybridF4Plan := ⟨s6Step60F4FlagArena,[877],s6Step60Add0Arena,[855],s6Step60Add0During,s6Step60Add0Work,s6Step60Add1During,s6Step60Add1Work⟩
theorem s6Step60F4_checked : compileHmrHybridF4Log s6Step60HeadFvAfter 822 886 s6Step60Add0A s6Step60Add0B s6Step60Add1A s6Step60Add1B [877] [855] s6Step60Add0Work s6Step60Add1Work=some s6Step60F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step60HeadFvAfter s6Step60F4FlagArena s6Step60Add0Arena s6Step60Add0During s6Step60Add1During 822 886
    s6Step60Add0A s6Step60Add0B s6Step60Add1A s6Step60Add1B [877] [855] s6Step60Add0Work s6Step60Add1Work
    (fun q hq => s6Step60F4_owned (List.mem_toFinset.mpr hq)) s6Step60F4_flag s6Step60F4_carry
    s6Step60F4_distinct s6Step60F4_apart s6Step60Add0_checked s6Step60Add1_checked
def s6Step61F4FlagArena : Arena := ⟨s6Step61HeadFvAfter.live∪{803},Finset.union_subset s6Step61HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step61F4_flag : s6Step61HeadFvAfter.checkBorrow 1 [803]=some s6Step61F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step61HeadFvAfter,arenaWires]
  · rfl
theorem s6Step61F4_carry : s6Step61F4FlagArena.checkBorrow 1 [922]=some s6Step61Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step61F4FlagArena,s6Step61HeadFvAfter,arenaWires]
  · change s6Step61Add0Arena.live=(s6Step61HeadFvAfter.live∪{803})∪{922}
    apply hmrArena_union_pair_of_filter_check s6Step61HeadFvAfter s6Step61Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 803 922 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step61F4_owned : (880::833::((s6Step61Add0A++s6Step61Add1A)++(s6Step61Add0B++s6Step61Add1B))).toFinset⊆s6Step61HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step61HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step61F4_distinct : (880::833::803::922::((s6Step61Add0A++s6Step61Add1A)++(s6Step61Add0B++s6Step61Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step61F4_apart : Disjoint (s6Step61Add0A++s6Step61Add0B).toFinset (s6Step61Add1A++s6Step61Add1B).toFinset := by
  have nd : ((s6Step61Add0A++s6Step61Add0B)++(s6Step61Add1A++s6Step61Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step61F4Plan : HmrHybridF4Plan := ⟨s6Step61F4FlagArena,[803],s6Step61Add0Arena,[922],s6Step61Add0During,s6Step61Add0Work,s6Step61Add1During,s6Step61Add1Work⟩
theorem s6Step61F4_checked : compileHmrHybridF4Log s6Step61HeadFvAfter 880 833 s6Step61Add0A s6Step61Add0B s6Step61Add1A s6Step61Add1B [803] [922] s6Step61Add0Work s6Step61Add1Work=some s6Step61F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step61HeadFvAfter s6Step61F4FlagArena s6Step61Add0Arena s6Step61Add0During s6Step61Add1During 880 833
    s6Step61Add0A s6Step61Add0B s6Step61Add1A s6Step61Add1B [803] [922] s6Step61Add0Work s6Step61Add1Work
    (fun q hq => s6Step61F4_owned (List.mem_toFinset.mpr hq)) s6Step61F4_flag s6Step61F4_carry
    s6Step61F4_distinct s6Step61F4_apart s6Step61Add0_checked s6Step61Add1_checked
def s6Step62F4FlagArena : Arena := ⟨s6Step62HeadFvAfter.live∪{822},Finset.union_subset s6Step62HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step62F4_flag : s6Step62HeadFvAfter.checkBorrow 1 [822]=some s6Step62F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step62HeadFvAfter,arenaWires]
  · rfl
theorem s6Step62F4_carry : s6Step62F4FlagArena.checkBorrow 1 [875]=some s6Step62Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step62F4FlagArena,s6Step62HeadFvAfter,arenaWires]
  · change s6Step62Add0Arena.live=(s6Step62HeadFvAfter.live∪{822})∪{875}
    apply hmrArena_union_pair_of_filter_check s6Step62HeadFvAfter s6Step62Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 822 875 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step62F4_owned : (888::838::((s6Step62Add0A++s6Step62Add1A)++(s6Step62Add0B++s6Step62Add1B))).toFinset⊆s6Step62HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step62HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step62F4_distinct : (888::838::822::875::((s6Step62Add0A++s6Step62Add1A)++(s6Step62Add0B++s6Step62Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step62F4_apart : Disjoint (s6Step62Add0A++s6Step62Add0B).toFinset (s6Step62Add1A++s6Step62Add1B).toFinset := by
  have nd : ((s6Step62Add0A++s6Step62Add0B)++(s6Step62Add1A++s6Step62Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step62F4Plan : HmrHybridF4Plan := ⟨s6Step62F4FlagArena,[822],s6Step62Add0Arena,[875],s6Step62Add0During,s6Step62Add0Work,s6Step62Add1During,s6Step62Add1Work⟩
theorem s6Step62F4_checked : compileHmrHybridF4Log s6Step62HeadFvAfter 888 838 s6Step62Add0A s6Step62Add0B s6Step62Add1A s6Step62Add1B [822] [875] s6Step62Add0Work s6Step62Add1Work=some s6Step62F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step62HeadFvAfter s6Step62F4FlagArena s6Step62Add0Arena s6Step62Add0During s6Step62Add1During 888 838
    s6Step62Add0A s6Step62Add0B s6Step62Add1A s6Step62Add1B [822] [875] s6Step62Add0Work s6Step62Add1Work
    (fun q hq => s6Step62F4_owned (List.mem_toFinset.mpr hq)) s6Step62F4_flag s6Step62F4_carry
    s6Step62F4_distinct s6Step62F4_apart s6Step62Add0_checked s6Step62Add1_checked

end ECDSAAdd.Arithmetic.Paper935
