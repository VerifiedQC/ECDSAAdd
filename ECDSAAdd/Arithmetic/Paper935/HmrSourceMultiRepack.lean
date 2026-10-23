import ECDSAAdd.Arithmetic.Paper935.HmrRepackComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
namespace ECDSAAdd.Arithmetic.Paper935
def s2Step24MultiRepackBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,254),(255,767),(768,780),(781,782),(785,839),(843,844),(848,849)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s2Step24MultiRepackAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(781,782),(786,839),(843,844),(848,849)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s2Step24MultiRepackMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,767),(768,780),(781,782),(786,839),(843,844),(848,849)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s2Step24MultiRepackMove0Borrowed : Arena := ⟨s2Step24MultiRepackBefore.live∪{254},Finset.union_subset s2Step24MultiRepackBefore.bounded (by norm_num [arenaWires])⟩
theorem s2Step24MultiRepack_move0_owned : 785∈s2Step24MultiRepackBefore.live := by norm_num [s2Step24MultiRepackBefore,arenaWires]
theorem s2Step24MultiRepack_move0_reserve : s2Step24MultiRepackBefore.reserve {254}=some s2Step24MultiRepackMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step24MultiRepackBefore,arenaWires]
  · rfl
theorem s2Step24MultiRepack_move0_retire : s2Step24MultiRepackMove0Borrowed.retireSet {785}=s2Step24MultiRepackMove0After := by
  unfold Arena.retireSet s2Step24MultiRepackMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step24MultiRepackMove0Borrowed,s2Step24MultiRepackBefore,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega
def s2Step24MultiRepackMove1Borrowed : Arena := ⟨s2Step24MultiRepackMove0After.live∪{767},Finset.union_subset s2Step24MultiRepackMove0After.bounded (by norm_num [arenaWires])⟩
theorem s2Step24MultiRepack_move1_owned : 779∈s2Step24MultiRepackMove0After.live := by norm_num [s2Step24MultiRepackMove0After,arenaWires]
theorem s2Step24MultiRepack_move1_reserve : s2Step24MultiRepackMove0After.reserve {767}=some s2Step24MultiRepackMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step24MultiRepackMove0After,arenaWires]
  · rfl
theorem s2Step24MultiRepack_move1_retire : s2Step24MultiRepackMove1Borrowed.retireSet {779}=s2Step24MultiRepackAfter := by
  unfold Arena.retireSet s2Step24MultiRepackAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step24MultiRepackMove1Borrowed,s2Step24MultiRepackMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega
theorem s2Step24MultiRepack_checked : s2Step24MultiRepackBefore.checkRepack [(785,254),(779,767)]=some s2Step24MultiRepackAfter := by
  have tail2 : s2Step24MultiRepackAfter.checkRepack []=some s2Step24MultiRepackAfter := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step24MultiRepackMove0After s2Step24MultiRepackMove1Borrowed s2Step24MultiRepackAfter s2Step24MultiRepackAfter 779 767 []
    s2Step24MultiRepack_move1_owned s2Step24MultiRepack_move1_reserve s2Step24MultiRepack_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step24MultiRepackBefore s2Step24MultiRepackMove0Borrowed s2Step24MultiRepackMove0After s2Step24MultiRepackAfter 785 254 [(779,767)]
    s2Step24MultiRepack_move0_owned s2Step24MultiRepack_move0_reserve s2Step24MultiRepack_move0_retire tail1
  exact tail0
def s2Step200MultiRepackBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,169),(170,681),(683,781),(782,814),(815,822),(823,826),(827,842),(843,879),(880,885),(886,891),(892,894),(897,898)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s2Step200MultiRepackAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(782,788),(789,814),(815,816),(817,822),(823,826),(827,836),(837,842),(843,879),(880,885),(886,891),(892,894),(897,898)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s2Step200MultiRepackMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,681),(683,781),(782,814),(815,816),(817,822),(823,826),(827,842),(843,879),(880,885),(886,891),(892,894),(897,898)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s2Step200MultiRepackMove0Borrowed : Arena := ⟨s2Step200MultiRepackBefore.live∪{169},Finset.union_subset s2Step200MultiRepackBefore.bounded (by norm_num [arenaWires])⟩
theorem s2Step200MultiRepack_move0_owned : 816∈s2Step200MultiRepackBefore.live := by norm_num [s2Step200MultiRepackBefore,arenaWires]
theorem s2Step200MultiRepack_move0_reserve : s2Step200MultiRepackBefore.reserve {169}=some s2Step200MultiRepackMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step200MultiRepackBefore,arenaWires]
  · rfl
theorem s2Step200MultiRepack_move0_retire : s2Step200MultiRepackMove0Borrowed.retireSet {816}=s2Step200MultiRepackMove0After := by
  unfold Arena.retireSet s2Step200MultiRepackMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step200MultiRepackMove0Borrowed,s2Step200MultiRepackBefore,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega
def s2Step200MultiRepackMove1After : Arena := ⟨arenaWires.filter (fun q => ([(0,682),(683,781),(782,788),(789,814),(815,816),(817,822),(823,826),(827,842),(843,879),(880,885),(886,891),(892,894),(897,898)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s2Step200MultiRepackMove1Borrowed : Arena := ⟨s2Step200MultiRepackMove0After.live∪{681},Finset.union_subset s2Step200MultiRepackMove0After.bounded (by norm_num [arenaWires])⟩
theorem s2Step200MultiRepack_move1_owned : 788∈s2Step200MultiRepackMove0After.live := by norm_num [s2Step200MultiRepackMove0After,arenaWires]
theorem s2Step200MultiRepack_move1_reserve : s2Step200MultiRepackMove0After.reserve {681}=some s2Step200MultiRepackMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step200MultiRepackMove0After,arenaWires]
  · rfl
theorem s2Step200MultiRepack_move1_retire : s2Step200MultiRepackMove1Borrowed.retireSet {788}=s2Step200MultiRepackMove1After := by
  unfold Arena.retireSet s2Step200MultiRepackMove1After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step200MultiRepackMove1Borrowed,s2Step200MultiRepackMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega
def s2Step200MultiRepackMove2Borrowed : Arena := ⟨s2Step200MultiRepackMove1After.live∪{682},Finset.union_subset s2Step200MultiRepackMove1After.bounded (by norm_num [arenaWires])⟩
theorem s2Step200MultiRepack_move2_owned : 836∈s2Step200MultiRepackMove1After.live := by norm_num [s2Step200MultiRepackMove1After,arenaWires]
theorem s2Step200MultiRepack_move2_reserve : s2Step200MultiRepackMove1After.reserve {682}=some s2Step200MultiRepackMove2Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step200MultiRepackMove1After,arenaWires]
  · rfl
theorem s2Step200MultiRepack_move2_retire : s2Step200MultiRepackMove2Borrowed.retireSet {836}=s2Step200MultiRepackAfter := by
  unfold Arena.retireSet s2Step200MultiRepackAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step200MultiRepackMove2Borrowed,s2Step200MultiRepackMove1After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega
theorem s2Step200MultiRepack_checked : s2Step200MultiRepackBefore.checkRepack [(816,169),(788,681),(836,682)]=some s2Step200MultiRepackAfter := by
  have tail3 : s2Step200MultiRepackAfter.checkRepack []=some s2Step200MultiRepackAfter := rfl
  have tail2 := Arena.checkRepack_cons_of_parts s2Step200MultiRepackMove1After s2Step200MultiRepackMove2Borrowed s2Step200MultiRepackAfter s2Step200MultiRepackAfter 836 682 []
    s2Step200MultiRepack_move2_owned s2Step200MultiRepack_move2_reserve s2Step200MultiRepack_move2_retire tail3
  have tail1 := Arena.checkRepack_cons_of_parts s2Step200MultiRepackMove0After s2Step200MultiRepackMove1Borrowed s2Step200MultiRepackMove1After s2Step200MultiRepackAfter 788 681 [(836,682)]
    s2Step200MultiRepack_move1_owned s2Step200MultiRepack_move1_reserve s2Step200MultiRepack_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step200MultiRepackBefore s2Step200MultiRepackMove0Borrowed s2Step200MultiRepackMove0After s2Step200MultiRepackAfter 816 169 [(788,681),(836,682)]
    s2Step200MultiRepack_move0_owned s2Step200MultiRepack_move0_reserve s2Step200MultiRepack_move0_retire tail1
  exact tail0
def s6Step24MultiRepackBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,254),(255,511),(512,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step24MultiRepackAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step24MultiRepackMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,511),(512,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step24MultiRepackMove0Borrowed : Arena := ⟨s6Step24MultiRepackBefore.live∪{254},Finset.union_subset s6Step24MultiRepackBefore.bounded (by norm_num [arenaWires])⟩
theorem s6Step24MultiRepack_move0_owned : 876∈s6Step24MultiRepackBefore.live := by norm_num [s6Step24MultiRepackBefore,arenaWires]
theorem s6Step24MultiRepack_move0_reserve : s6Step24MultiRepackBefore.reserve {254}=some s6Step24MultiRepackMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step24MultiRepackBefore,arenaWires]
  · rfl
theorem s6Step24MultiRepack_move0_retire : s6Step24MultiRepackMove0Borrowed.retireSet {876}=s6Step24MultiRepackMove0After := by
  unfold Arena.retireSet s6Step24MultiRepackMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step24MultiRepackMove0Borrowed,s6Step24MultiRepackBefore,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega
def s6Step24MultiRepackMove1Borrowed : Arena := ⟨s6Step24MultiRepackMove0After.live∪{511},Finset.union_subset s6Step24MultiRepackMove0After.bounded (by norm_num [arenaWires])⟩
theorem s6Step24MultiRepack_move1_owned : 859∈s6Step24MultiRepackMove0After.live := by norm_num [s6Step24MultiRepackMove0After,arenaWires]
theorem s6Step24MultiRepack_move1_reserve : s6Step24MultiRepackMove0After.reserve {511}=some s6Step24MultiRepackMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step24MultiRepackMove0After,arenaWires]
  · rfl
theorem s6Step24MultiRepack_move1_retire : s6Step24MultiRepackMove1Borrowed.retireSet {859}=s6Step24MultiRepackAfter := by
  unfold Arena.retireSet s6Step24MultiRepackAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step24MultiRepackMove1Borrowed,s6Step24MultiRepackMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega
theorem s6Step24MultiRepack_checked : s6Step24MultiRepackBefore.checkRepack [(876,254),(859,511)]=some s6Step24MultiRepackAfter := by
  have tail2 : s6Step24MultiRepackAfter.checkRepack []=some s6Step24MultiRepackAfter := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step24MultiRepackMove0After s6Step24MultiRepackMove1Borrowed s6Step24MultiRepackAfter s6Step24MultiRepackAfter 859 511 []
    s6Step24MultiRepack_move1_owned s6Step24MultiRepack_move1_reserve s6Step24MultiRepack_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step24MultiRepackBefore s6Step24MultiRepackMove0Borrowed s6Step24MultiRepackMove0After s6Step24MultiRepackAfter 876 254 [(859,511)]
    s6Step24MultiRepack_move0_owned s6Step24MultiRepack_move0_reserve s6Step24MultiRepack_move0_retire tail1
  exact tail0
def s6Step200MultiRepackBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,169),(170,425),(427,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,832),(833,838),(839,842),(843,849),(850,869),(870,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step200MultiRepackAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(783,786),(788,790),(793,794),(795,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,832),(833,838),(839,842),(843,849),(850,869),(870,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step200MultiRepackMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,425),(427,780),(781,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,832),(833,838),(839,842),(843,849),(850,869),(870,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step200MultiRepackMove0Borrowed : Arena := ⟨s6Step200MultiRepackBefore.live∪{169},Finset.union_subset s6Step200MultiRepackBefore.bounded (by norm_num [arenaWires])⟩
theorem s6Step200MultiRepack_move0_owned : 780∈s6Step200MultiRepackBefore.live := by norm_num [s6Step200MultiRepackBefore,arenaWires]
theorem s6Step200MultiRepack_move0_reserve : s6Step200MultiRepackBefore.reserve {169}=some s6Step200MultiRepackMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step200MultiRepackBefore,arenaWires]
  · rfl
theorem s6Step200MultiRepack_move0_retire : s6Step200MultiRepackMove0Borrowed.retireSet {780}=s6Step200MultiRepackMove0After := by
  unfold Arena.retireSet s6Step200MultiRepackMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step200MultiRepackMove0Borrowed,s6Step200MultiRepackBefore,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega
def s6Step200MultiRepackMove1After : Arena := ⟨arenaWires.filter (fun q => ([(0,426),(427,780),(781,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,808),(814,815),(818,819),(821,822),(823,832),(833,838),(839,842),(843,849),(850,869),(870,896),(897,899),(901,905),(907,909),(910,914),(917,918),(919,920),(921,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step200MultiRepackMove1Borrowed : Arena := ⟨s6Step200MultiRepackMove0After.live∪{425},Finset.union_subset s6Step200MultiRepackMove0After.bounded (by norm_num [arenaWires])⟩
theorem s6Step200MultiRepack_move1_owned : 927∈s6Step200MultiRepackMove0After.live := by norm_num [s6Step200MultiRepackMove0After,arenaWires]
theorem s6Step200MultiRepack_move1_reserve : s6Step200MultiRepackMove0After.reserve {425}=some s6Step200MultiRepackMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step200MultiRepackMove0After,arenaWires]
  · rfl
theorem s6Step200MultiRepack_move1_retire : s6Step200MultiRepackMove1Borrowed.retireSet {927}=s6Step200MultiRepackMove1After := by
  unfold Arena.retireSet s6Step200MultiRepackMove1After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step200MultiRepackMove1Borrowed,s6Step200MultiRepackMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega
def s6Step200MultiRepackMove2Borrowed : Arena := ⟨s6Step200MultiRepackMove1After.live∪{426},Finset.union_subset s6Step200MultiRepackMove1After.bounded (by norm_num [arenaWires])⟩
theorem s6Step200MultiRepack_move2_owned : 794∈s6Step200MultiRepackMove1After.live := by norm_num [s6Step200MultiRepackMove1After,arenaWires]
theorem s6Step200MultiRepack_move2_reserve : s6Step200MultiRepackMove1After.reserve {426}=some s6Step200MultiRepackMove2Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step200MultiRepackMove1After,arenaWires]
  · rfl
theorem s6Step200MultiRepack_move2_retire : s6Step200MultiRepackMove2Borrowed.retireSet {794}=s6Step200MultiRepackAfter := by
  unfold Arena.retireSet s6Step200MultiRepackAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step200MultiRepackMove2Borrowed,s6Step200MultiRepackMove1After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega
theorem s6Step200MultiRepack_checked : s6Step200MultiRepackBefore.checkRepack [(780,169),(927,425),(794,426)]=some s6Step200MultiRepackAfter := by
  have tail3 : s6Step200MultiRepackAfter.checkRepack []=some s6Step200MultiRepackAfter := rfl
  have tail2 := Arena.checkRepack_cons_of_parts s6Step200MultiRepackMove1After s6Step200MultiRepackMove2Borrowed s6Step200MultiRepackAfter s6Step200MultiRepackAfter 794 426 []
    s6Step200MultiRepack_move2_owned s6Step200MultiRepack_move2_reserve s6Step200MultiRepack_move2_retire tail3
  have tail1 := Arena.checkRepack_cons_of_parts s6Step200MultiRepackMove0After s6Step200MultiRepackMove1Borrowed s6Step200MultiRepackMove1After s6Step200MultiRepackAfter 927 425 [(794,426)]
    s6Step200MultiRepack_move1_owned s6Step200MultiRepack_move1_reserve s6Step200MultiRepack_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step200MultiRepackBefore s6Step200MultiRepackMove0Borrowed s6Step200MultiRepackMove0After s6Step200MultiRepackAfter 780 169 [(927,425),(794,426)]
    s6Step200MultiRepack_move0_owned s6Step200MultiRepack_move0_reserve s6Step200MultiRepack_move0_retire tail1
  exact tail0
end ECDSAAdd.Arithmetic.Paper935
