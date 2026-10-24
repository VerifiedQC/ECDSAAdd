import ECDSAAdd.Arithmetic.Paper935.Arena
import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBorrow
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFront
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceArithmeticPartsChunk8
import ECDSAAdd.Arithmetic.Paper935.HmrSourceCounterPartsChunk8
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryBankChunk8
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk8
import ECDSAAdd.Arithmetic.Paper935.HmrSourceExitBankChunk8
import ECDSAAdd.Arithmetic.Paper935.HmrSourceExitPartsChunk8
import ECDSAAdd.Arithmetic.Paper935.HmrSourceF4PartsChunk8
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFront
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomBankChunk8
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomPartsChunk8
import ECDSAAdd.Arithmetic.Paper935.RowWindowResize
import ECDSAAdd.Arithmetic.Paper935.WindowAllocator
import ECDSAAdd.Arithmetic.Paper935.WindowBank
import ECDSAAdd.Arithmetic.Paper935.HmrFrontComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitialChunk7

namespace ECDSAAdd.Arithmetic.Paper935
def s6Step63FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [838]],[[780], [855], [833], [877]],[[], [], [], []]⟩,[888],[778],[822],[875],[803, 922, 879, 784, 891, 846, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[803, 922, 879, 784, 891, 846, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811],[822, 875, 803, 922]⟩
def s6Step63FrontBank : WindowBank := ⟨s6Step63EntryFRow,s6Step63EntryGRow,s6Step63EntryFvRow,s6Step63EntryGvRow⟩
def s6Step63FrontPair : WindowBank := ⟨s6Step63EntryFOut,s6Step63EntryGOut,s6Step63EntryFvOut,s6Step63EntryGvOut⟩
def s6Step63FrontHead : WindowBank := ⟨s6Step63HeadFOut,s6Step63HeadGOut,s6Step63HeadFvOut,s6Step63HeadGvOut⟩
def s6Step63FrontOut : WindowBank := ⟨s6Step63ExitFOut,s6Step63ExitGOut,s6Step63ExitFvOut,s6Step63ExitGvOut⟩
def s6Step63FrontSigmaArena : Arena := ⟨s6Step63EntryGvAfter.live∪{888},Finset.union_subset s6Step63EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step63Front_sigma : s6Step63EntryGvAfter.checkBorrow 1 [888]=some s6Step63FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step63EntryGvAfter,arenaWires]
  · rfl
theorem s6Step63Front_branch : s6Step63FrontSigmaArena.checkBorrow 1 [778]=some s6Step63HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step63FrontSigmaArena,s6Step63EntryGvAfter,arenaWires]
  · change s6Step63HeadGBefore.live=(s6Step63EntryGvAfter.live∪{888})∪{778}
    apply hmrArena_union_pair_of_filter_check s6Step63EntryGvAfter s6Step63HeadGBefore (fun q => ([(0,778),(779,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 888 778 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step63Front_entry : HmrFrontEntryValid s6Step63EntryFBefore s6Step63FrontBank 237 45 ⟨237,237,46,44⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step63FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step63EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step63EntryFBefore (fun q => ([(0,778),(779,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step63FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step63FrontPlan : HmrSourceFront := ⟨s6Step63EntryGvAfter,s6Step63FrontPair,(growRow 795 s6Step63EntryFFresh ++ (growRow 777 s6Step63EntryGFresh ++ (growRow 776 s6Step63EntryFvFresh ++ (growRow 775 s6Step63EntryGvFresh ++ [])))),s6Step63FrontSigmaArena,[888],s6Step63HeadGBefore,[778],
  s6Step63HeadFvAfter,s6Step63FrontHead,(growRow 777 s6Step63HeadGFresh ++ (growRow 795 s6Step63HeadFFresh ++ (growRow 775 s6Step63HeadGvFresh ++ (growRow 776 s6Step63HeadFvFresh ++ [])))),s6Step63F4Plan,s6Step63CounterDuring,s6Step63CounterWork,s6Step63ExitGvAfter,s6Step63FrontOut,(shrinkRow 777 s6Step63ExitGExtra ++ (shrinkRow 795 s6Step63ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step63ExitGvExtra ++ []))))⟩
theorem s6Step63Front_checked : compileHmrSourceFrontLog s6Step63EntryFBefore s6Step63FrontBank 237 45 ⟨237,237,46,44⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step63FrontLog=some s6Step63FrontPlan := by
  have pairEq : s6Step63FrontPair=⟨s6Step63HeadFRow,s6Step63HeadGRow,s6Step63HeadFvRow,s6Step63HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step63FrontHead=⟨s6Step63ExitFRow,s6Step63ExitGRow,s6Step63ExitFvRow,s6Step63ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step63Add0A=s6Step63FrontHead.f.wires := by decide +kernel
  have gEq : s6Step63Add0B=s6Step63FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step63Add1A=s6Step63FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step63Add1B=s6Step63FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step63EntryFBefore s6Step63FrontBank 237 45 ⟨237,237,46,44⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step63FrontLog s6Step63FrontPlan
  · exact s6Step63Front_entry
  · exact s6Step63EntryBank_checked
  · exact s6Step63Front_sigma
  · rfl
  · exact s6Step63Front_branch
  · rfl
  · simpa only [s6Step63FrontPlan,pairEq] using s6Step63HeadBank_checked
  · simpa only [s6Step63FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step63F4_checked
  · exact s6Step63Counter_checked
  · rfl
  · simpa only [s6Step63FrontPlan,headEq] using s6Step63ExitBank_checked
def s6Step498FrontLog : HmrFrontAllocationLog := ⟨⟨[[915], [], [], []],[[798], [808], [820], [896]],[[], [], [], []]⟩,[791],[842],[790],[914],[916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[790, 914, 916, 800, 918]⟩
def s6Step498FrontBank : WindowBank := ⟨s6Step498EntryFRow,s6Step498EntryGRow,s6Step498EntryFvRow,s6Step498EntryGvRow⟩
def s6Step498FrontPair : WindowBank := ⟨s6Step498EntryFOut,s6Step498EntryGOut,s6Step498EntryFvOut,s6Step498EntryGvOut⟩
def s6Step498FrontHead : WindowBank := ⟨s6Step498HeadFOut,s6Step498HeadGOut,s6Step498HeadFvOut,s6Step498HeadGvOut⟩
def s6Step498FrontOut : WindowBank := ⟨s6Step498ExitFOut,s6Step498ExitGOut,s6Step498ExitFvOut,s6Step498ExitGvOut⟩
def s6Step498FrontSigmaArena : Arena := ⟨s6Step498EntryGvAfter.live∪{791},Finset.union_subset s6Step498EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step498Front_sigma : s6Step498EntryGvAfter.checkBorrow 1 [791]=some s6Step498FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step498EntryGvAfter,s6Step498EntryFAfter,arenaWires]
  · rfl
theorem s6Step498Front_branch : s6Step498FrontSigmaArena.checkBorrow 1 [842]=some s6Step498HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step498FrontSigmaArena,s6Step498EntryGvAfter,s6Step498EntryFAfter,arenaWires]
  · ext q
    simp only [s6Step498FrontSigmaArena,s6Step498EntryGvAfter,s6Step498EntryFAfter,s6Step498HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step498Front_entry : HmrFrontEntryValid s6Step498EntryFBefore s6Step498FrontBank 25 266 ⟨24,24,267,266⟩ false 819 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769, 819]++(s6Step498FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769, 819] : List Wire).toFinset⊆s6Step498EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step498EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769, 819] : List Wire).toFinset (s6Step498FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step498FrontPlan : HmrSourceFront := ⟨s6Step498EntryGvAfter,s6Step498FrontPair,(growRow 795 s6Step498EntryFFresh ++ (growRow 777 s6Step498EntryGFresh ++ (growRow 776 s6Step498EntryFvFresh ++ (growRow 775 s6Step498EntryGvFresh ++ [])))),s6Step498FrontSigmaArena,[791],s6Step498HeadGBefore,[842],
  s6Step498HeadFvAfter,s6Step498FrontHead,(growRow 777 s6Step498HeadGFresh ++ (growRow 795 s6Step498HeadFFresh ++ (growRow 775 s6Step498HeadGvFresh ++ (growRow 776 s6Step498HeadFvFresh ++ [])))),s6Step498F4Plan,s6Step498CounterDuring,s6Step498CounterWork,s6Step498ExitGvAfter,s6Step498FrontOut,(shrinkRow 777 s6Step498ExitGExtra ++ (shrinkRow 795 s6Step498ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step498ExitGvExtra ++ []))))⟩
theorem s6Step498Front_checked : compileHmrSourceFrontLog s6Step498EntryFBefore s6Step498FrontBank 25 266 ⟨24,24,267,266⟩ false 819 [774, 773, 772, 771, 770, 769] s6Step498FrontLog=some s6Step498FrontPlan := by
  have pairEq : s6Step498FrontPair=⟨s6Step498HeadFRow,s6Step498HeadGRow,s6Step498HeadFvRow,s6Step498HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step498FrontHead=⟨s6Step498ExitFRow,s6Step498ExitGRow,s6Step498ExitFvRow,s6Step498ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step498Add0A=s6Step498FrontHead.f.wires := by decide +kernel
  have gEq : s6Step498Add0B=s6Step498FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step498Add1A=s6Step498FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step498Add1B=s6Step498FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step498EntryFBefore s6Step498FrontBank 25 266 ⟨24,24,267,266⟩ false 819 [774, 773, 772, 771, 770, 769] s6Step498FrontLog s6Step498FrontPlan
  · exact s6Step498Front_entry
  · exact s6Step498EntryBank_checked
  · exact s6Step498Front_sigma
  · rfl
  · exact s6Step498Front_branch
  · rfl
  · simpa only [s6Step498FrontPlan,pairEq] using s6Step498HeadBank_checked
  · simpa only [s6Step498FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step498F4_checked
  · exact s6Step498Counter_checked
  · rfl
  · simpa only [s6Step498FrontPlan,headEq] using s6Step498ExitBank_checked

end ECDSAAdd.Arithmetic.Paper935
