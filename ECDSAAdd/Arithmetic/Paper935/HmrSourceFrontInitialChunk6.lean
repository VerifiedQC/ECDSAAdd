import ECDSAAdd.Arithmetic.Paper935.Arena
import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBorrow
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFront
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceArithmeticPartsChunk6
import ECDSAAdd.Arithmetic.Paper935.HmrSourceCounterPartsChunk6
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryBankChunk6
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk6
import ECDSAAdd.Arithmetic.Paper935.HmrSourceExitBankChunk6
import ECDSAAdd.Arithmetic.Paper935.HmrSourceExitPartsChunk6
import ECDSAAdd.Arithmetic.Paper935.HmrSourceF4PartsChunk6
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFront
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomBankChunk6
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomPartsChunk6
import ECDSAAdd.Arithmetic.Paper935.RowWindowResize
import ECDSAAdd.Arithmetic.Paper935.WindowAllocator
import ECDSAAdd.Arithmetic.Paper935.WindowBank
import ECDSAAdd.Arithmetic.Paper935.HmrFrontComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitialChunk5

namespace ECDSAAdd.Arithmetic.Paper935
def s6Step31FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [793], [], [802]],[[876], [813], [881], [887]],[[], [], [], []]⟩,[874],[859],[877],[855],[803, 922, 879, 784, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[803, 922, 879, 784, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791],[877, 855, 803, 922]⟩
def s6Step31FrontBank : WindowBank := ⟨s6Step31EntryFRow,s6Step31EntryGRow,s6Step31EntryFvRow,s6Step31EntryGvRow⟩
def s6Step31FrontPair : WindowBank := ⟨s6Step31EntryFOut,s6Step31EntryGOut,s6Step31EntryFvOut,s6Step31EntryGvOut⟩
def s6Step31FrontHead : WindowBank := ⟨s6Step31HeadFOut,s6Step31HeadGOut,s6Step31HeadFvOut,s6Step31HeadGvOut⟩
def s6Step31FrontOut : WindowBank := ⟨s6Step31ExitFOut,s6Step31ExitGOut,s6Step31ExitFvOut,s6Step31ExitGvOut⟩
def s6Step31FrontSigmaArena : Arena := ⟨s6Step31EntryGvAfter.live∪{874},Finset.union_subset s6Step31EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step31Front_sigma : s6Step31EntryGvAfter.checkBorrow 1 [874]=some s6Step31FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step31EntryGvAfter,arenaWires]
  · rfl
theorem s6Step31Front_branch : s6Step31FrontSigmaArena.checkBorrow 1 [859]=some s6Step31HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step31FrontSigmaArena,s6Step31EntryGvAfter,arenaWires]
  · change s6Step31HeadGBefore.live=(s6Step31EntryGvAfter.live∪{874})∪{859}
    apply hmrArena_union_pair_of_filter_check s6Step31EntryGvAfter s6Step31HeadGBefore (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 874 859 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step31Front_entry : HmrFrontEntryValid s6Step31EntryFBefore s6Step31FrontBank 253 29 ⟨253,251,29,28⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step31FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step31EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step31EntryFBefore (fun q => ([(0,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step31FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step31FrontPlan : HmrSourceFront := ⟨s6Step31EntryGvAfter,s6Step31FrontPair,(growRow 795 s6Step31EntryFFresh ++ (growRow 777 s6Step31EntryGFresh ++ (growRow 776 s6Step31EntryFvFresh ++ (growRow 775 s6Step31EntryGvFresh ++ [])))),s6Step31FrontSigmaArena,[874],s6Step31HeadGBefore,[859],
  s6Step31HeadFvAfter,s6Step31FrontHead,(growRow 777 s6Step31HeadGFresh ++ (growRow 795 s6Step31HeadFFresh ++ (growRow 775 s6Step31HeadGvFresh ++ (growRow 776 s6Step31HeadFvFresh ++ [])))),s6Step31F4Plan,s6Step31CounterDuring,s6Step31CounterWork,s6Step31ExitGvAfter,s6Step31FrontOut,(shrinkRow 777 s6Step31ExitGExtra ++ (shrinkRow 795 s6Step31ExitFExtra ++ (shrinkRow 776 s6Step31ExitFvExtra ++ (shrinkRow 775 s6Step31ExitGvExtra ++ []))))⟩
theorem s6Step31Front_checked : compileHmrSourceFrontLog s6Step31EntryFBefore s6Step31FrontBank 253 29 ⟨253,251,29,28⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step31FrontLog=some s6Step31FrontPlan := by
  have pairEq : s6Step31FrontPair=⟨s6Step31HeadFRow,s6Step31HeadGRow,s6Step31HeadFvRow,s6Step31HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step31FrontHead=⟨s6Step31ExitFRow,s6Step31ExitGRow,s6Step31ExitFvRow,s6Step31ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step31Add0A=s6Step31FrontHead.f.wires := by decide +kernel
  have gEq : s6Step31Add0B=s6Step31FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step31Add1A=s6Step31FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step31Add1B=s6Step31FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step31EntryFBefore s6Step31FrontBank 253 29 ⟨253,251,29,28⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step31FrontLog s6Step31FrontPlan
  · exact s6Step31Front_entry
  · exact s6Step31EntryBank_checked
  · exact s6Step31Front_sigma
  · rfl
  · exact s6Step31Front_branch
  · rfl
  · simpa only [s6Step31FrontPlan,pairEq] using s6Step31HeadBank_checked
  · simpa only [s6Step31FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step31F4_checked
  · exact s6Step31Counter_checked
  · rfl
  · simpa only [s6Step31FrontPlan,headEq] using s6Step31ExitBank_checked
def s6Step32FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [859, 874], [], [779]],[[887], [813], [793], [876]],[[], [], [], []]⟩,[802],[881],[877],[855],[803, 922, 879, 784, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[803, 922, 879, 784, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840],[877, 855, 803, 922]⟩
def s6Step32FrontBank : WindowBank := ⟨s6Step32EntryFRow,s6Step32EntryGRow,s6Step32EntryFvRow,s6Step32EntryGvRow⟩
def s6Step32FrontPair : WindowBank := ⟨s6Step32EntryFOut,s6Step32EntryGOut,s6Step32EntryFvOut,s6Step32EntryGvOut⟩
def s6Step32FrontHead : WindowBank := ⟨s6Step32HeadFOut,s6Step32HeadGOut,s6Step32HeadFvOut,s6Step32HeadGvOut⟩
def s6Step32FrontOut : WindowBank := ⟨s6Step32ExitFOut,s6Step32ExitGOut,s6Step32ExitFvOut,s6Step32ExitGvOut⟩
def s6Step32FrontSigmaArena : Arena := ⟨s6Step32EntryGvAfter.live∪{802},Finset.union_subset s6Step32EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step32Front_sigma : s6Step32EntryGvAfter.checkBorrow 1 [802]=some s6Step32FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step32EntryGvAfter,arenaWires]
  · rfl
theorem s6Step32Front_branch : s6Step32FrontSigmaArena.checkBorrow 1 [881]=some s6Step32HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step32FrontSigmaArena,s6Step32EntryGvAfter,arenaWires]
  · change s6Step32HeadGBefore.live=(s6Step32EntryGvAfter.live∪{802})∪{881}
    apply hmrArena_union_pair_of_filter_check s6Step32EntryGvAfter s6Step32HeadGBefore (fun q => ([(0,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 802 881 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step32Front_entry : HmrFrontEntryValid s6Step32EntryFBefore s6Step32FrontBank 253 29 ⟨252,252,29,28⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step32FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step32EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step32EntryFBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step32FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step32FrontPlan : HmrSourceFront := ⟨s6Step32EntryGvAfter,s6Step32FrontPair,(growRow 795 s6Step32EntryFFresh ++ (growRow 777 s6Step32EntryGFresh ++ (growRow 776 s6Step32EntryFvFresh ++ (growRow 775 s6Step32EntryGvFresh ++ [])))),s6Step32FrontSigmaArena,[802],s6Step32HeadGBefore,[881],
  s6Step32HeadFvAfter,s6Step32FrontHead,(growRow 777 s6Step32HeadGFresh ++ (growRow 795 s6Step32HeadFFresh ++ (growRow 775 s6Step32HeadGvFresh ++ (growRow 776 s6Step32HeadFvFresh ++ [])))),s6Step32F4Plan,s6Step32CounterDuring,s6Step32CounterWork,s6Step32ExitGvAfter,s6Step32FrontOut,(shrinkRow 777 s6Step32ExitGExtra ++ (shrinkRow 795 s6Step32ExitFExtra ++ (shrinkRow 776 s6Step32ExitFvExtra ++ (shrinkRow 775 s6Step32ExitGvExtra ++ []))))⟩
theorem s6Step32Front_checked : compileHmrSourceFrontLog s6Step32EntryFBefore s6Step32FrontBank 253 29 ⟨252,252,29,28⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step32FrontLog=some s6Step32FrontPlan := by
  have pairEq : s6Step32FrontPair=⟨s6Step32HeadFRow,s6Step32HeadGRow,s6Step32HeadFvRow,s6Step32HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step32FrontHead=⟨s6Step32ExitFRow,s6Step32ExitGRow,s6Step32ExitFvRow,s6Step32ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step32Add0A=s6Step32FrontHead.f.wires := by decide +kernel
  have gEq : s6Step32Add0B=s6Step32FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step32Add1A=s6Step32FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step32Add1B=s6Step32FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step32EntryFBefore s6Step32FrontBank 253 29 ⟨252,252,29,28⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step32FrontLog s6Step32FrontPlan
  · exact s6Step32Front_entry
  · exact s6Step32EntryBank_checked
  · exact s6Step32Front_sigma
  · rfl
  · exact s6Step32Front_branch
  · rfl
  · simpa only [s6Step32FrontPlan,pairEq] using s6Step32HeadBank_checked
  · simpa only [s6Step32FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step32F4_checked
  · exact s6Step32Counter_checked
  · rfl
  · simpa only [s6Step32FrontPlan,headEq] using s6Step32ExitBank_checked
def s6Step33FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [881]],[[779], [793], [876], [813]],[[], [], [], []]⟩,[802],[927],[874],[887],[877, 855, 803, 922, 879, 784, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[877, 855, 803, 922, 879, 784, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885],[874, 887, 877, 855]⟩
def s6Step33FrontBank : WindowBank := ⟨s6Step33EntryFRow,s6Step33EntryGRow,s6Step33EntryFvRow,s6Step33EntryGvRow⟩
def s6Step33FrontPair : WindowBank := ⟨s6Step33EntryFOut,s6Step33EntryGOut,s6Step33EntryFvOut,s6Step33EntryGvOut⟩
def s6Step33FrontHead : WindowBank := ⟨s6Step33HeadFOut,s6Step33HeadGOut,s6Step33HeadFvOut,s6Step33HeadGvOut⟩
def s6Step33FrontOut : WindowBank := ⟨s6Step33ExitFOut,s6Step33ExitGOut,s6Step33ExitFvOut,s6Step33ExitGvOut⟩
def s6Step33FrontSigmaArena : Arena := ⟨s6Step33EntryGvAfter.live∪{802},Finset.union_subset s6Step33EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step33Front_sigma : s6Step33EntryGvAfter.checkBorrow 1 [802]=some s6Step33FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step33EntryGvAfter,arenaWires]
  · rfl
theorem s6Step33Front_branch : s6Step33FrontSigmaArena.checkBorrow 1 [927]=some s6Step33HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step33FrontSigmaArena,s6Step33EntryGvAfter,arenaWires]
  · change s6Step33HeadGBefore.live=(s6Step33EntryGvAfter.live∪{802})∪{927}
    apply hmrArena_union_pair_of_filter_check s6Step33EntryGvAfter s6Step33HeadGBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 802 927 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step33Front_entry : HmrFrontEntryValid s6Step33EntryFBefore s6Step33FrontBank 252 29 ⟨251,251,30,29⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step33FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step33EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step33EntryFBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step33FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step33FrontPlan : HmrSourceFront := ⟨s6Step33EntryGvAfter,s6Step33FrontPair,(growRow 795 s6Step33EntryFFresh ++ (growRow 777 s6Step33EntryGFresh ++ (growRow 776 s6Step33EntryFvFresh ++ (growRow 775 s6Step33EntryGvFresh ++ [])))),s6Step33FrontSigmaArena,[802],s6Step33HeadGBefore,[927],
  s6Step33HeadFvAfter,s6Step33FrontHead,(growRow 777 s6Step33HeadGFresh ++ (growRow 795 s6Step33HeadFFresh ++ (growRow 775 s6Step33HeadGvFresh ++ (growRow 776 s6Step33HeadFvFresh ++ [])))),s6Step33F4Plan,s6Step33CounterDuring,s6Step33CounterWork,s6Step33ExitGvAfter,s6Step33FrontOut,(shrinkRow 777 s6Step33ExitGExtra ++ (shrinkRow 795 s6Step33ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step33ExitGvExtra ++ []))))⟩
theorem s6Step33Front_checked : compileHmrSourceFrontLog s6Step33EntryFBefore s6Step33FrontBank 252 29 ⟨251,251,30,29⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step33FrontLog=some s6Step33FrontPlan := by
  have pairEq : s6Step33FrontPair=⟨s6Step33HeadFRow,s6Step33HeadGRow,s6Step33HeadFvRow,s6Step33HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step33FrontHead=⟨s6Step33ExitFRow,s6Step33ExitGRow,s6Step33ExitFvRow,s6Step33ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step33Add0A=s6Step33FrontHead.f.wires := by decide +kernel
  have gEq : s6Step33Add0B=s6Step33FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step33Add1A=s6Step33FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step33Add1B=s6Step33FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step33EntryFBefore s6Step33FrontBank 252 29 ⟨251,251,30,29⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step33FrontLog s6Step33FrontPlan
  · exact s6Step33Front_entry
  · exact s6Step33EntryBank_checked
  · exact s6Step33Front_sigma
  · rfl
  · exact s6Step33Front_branch
  · rfl
  · simpa only [s6Step33FrontPlan,pairEq] using s6Step33HeadBank_checked
  · simpa only [s6Step33FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step33F4_checked
  · exact s6Step33Counter_checked
  · rfl
  · simpa only [s6Step33FrontPlan,headEq] using s6Step33ExitBank_checked
def s6Step34FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [927]],[[876], [793], [859], [779]],[[], [], [], []]⟩,[802],[875],[874],[887],[877, 855, 803, 922, 879, 784, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[877, 855, 803, 922, 879, 784, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840],[874, 887, 877, 855]⟩
def s6Step34FrontBank : WindowBank := ⟨s6Step34EntryFRow,s6Step34EntryGRow,s6Step34EntryFvRow,s6Step34EntryGvRow⟩
def s6Step34FrontPair : WindowBank := ⟨s6Step34EntryFOut,s6Step34EntryGOut,s6Step34EntryFvOut,s6Step34EntryGvOut⟩
def s6Step34FrontHead : WindowBank := ⟨s6Step34HeadFOut,s6Step34HeadGOut,s6Step34HeadFvOut,s6Step34HeadGvOut⟩
def s6Step34FrontOut : WindowBank := ⟨s6Step34ExitFOut,s6Step34ExitGOut,s6Step34ExitFvOut,s6Step34ExitGvOut⟩
def s6Step34FrontSigmaArena : Arena := ⟨s6Step34EntryGvAfter.live∪{802},Finset.union_subset s6Step34EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step34Front_sigma : s6Step34EntryGvAfter.checkBorrow 1 [802]=some s6Step34FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step34EntryGvAfter,arenaWires]
  · rfl
theorem s6Step34Front_branch : s6Step34FrontSigmaArena.checkBorrow 1 [875]=some s6Step34HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step34FrontSigmaArena,s6Step34EntryGvAfter,arenaWires]
  · change s6Step34HeadGBefore.live=(s6Step34EntryGvAfter.live∪{802})∪{875}
    apply hmrArena_union_pair_of_filter_check s6Step34EntryGvAfter s6Step34HeadGBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,871),(872,874),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 802 875 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step34Front_entry : HmrFrontEntryValid s6Step34EntryFBefore s6Step34FrontBank 251 30 ⟨251,250,30,30⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step34FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step34EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step34EntryFBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,871),(872,874),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step34FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step34FrontPlan : HmrSourceFront := ⟨s6Step34EntryGvAfter,s6Step34FrontPair,(growRow 795 s6Step34EntryFFresh ++ (growRow 777 s6Step34EntryGFresh ++ (growRow 776 s6Step34EntryFvFresh ++ (growRow 775 s6Step34EntryGvFresh ++ [])))),s6Step34FrontSigmaArena,[802],s6Step34HeadGBefore,[875],
  s6Step34HeadFvAfter,s6Step34FrontHead,(growRow 777 s6Step34HeadGFresh ++ (growRow 795 s6Step34HeadFFresh ++ (growRow 775 s6Step34HeadGvFresh ++ (growRow 776 s6Step34HeadFvFresh ++ [])))),s6Step34F4Plan,s6Step34CounterDuring,s6Step34CounterWork,s6Step34ExitGvAfter,s6Step34FrontOut,(shrinkRow 777 s6Step34ExitGExtra ++ (shrinkRow 795 s6Step34ExitFExtra ++ (shrinkRow 776 s6Step34ExitFvExtra ++ (shrinkRow 775 s6Step34ExitGvExtra ++ []))))⟩
theorem s6Step34Front_checked : compileHmrSourceFrontLog s6Step34EntryFBefore s6Step34FrontBank 251 30 ⟨251,250,30,30⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step34FrontLog=some s6Step34FrontPlan := by
  have pairEq : s6Step34FrontPair=⟨s6Step34HeadFRow,s6Step34HeadGRow,s6Step34HeadFvRow,s6Step34HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step34FrontHead=⟨s6Step34ExitFRow,s6Step34ExitGRow,s6Step34ExitFvRow,s6Step34ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step34Add0A=s6Step34FrontHead.f.wires := by decide +kernel
  have gEq : s6Step34Add0B=s6Step34FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step34Add1A=s6Step34FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step34Add1B=s6Step34FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step34EntryFBefore s6Step34FrontBank 251 30 ⟨251,250,30,30⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step34FrontLog s6Step34FrontPlan
  · exact s6Step34Front_entry
  · exact s6Step34EntryBank_checked
  · exact s6Step34Front_sigma
  · rfl
  · exact s6Step34Front_branch
  · rfl
  · simpa only [s6Step34FrontPlan,pairEq] using s6Step34HeadBank_checked
  · simpa only [s6Step34FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step34F4_checked
  · exact s6Step34Counter_checked
  · rfl
  · simpa only [s6Step34FrontPlan,headEq] using s6Step34ExitBank_checked
def s6Step35FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [875], [], []],[[859], [779], [793], [876]],[[], [], [], []]⟩,[802],[857],[874],[887],[877, 855, 803, 922, 879, 784, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[877, 855, 803, 922, 879, 784, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840],[874, 887, 877, 855]⟩
def s6Step35FrontBank : WindowBank := ⟨s6Step35EntryFRow,s6Step35EntryGRow,s6Step35EntryFvRow,s6Step35EntryGvRow⟩
def s6Step35FrontPair : WindowBank := ⟨s6Step35EntryFOut,s6Step35EntryGOut,s6Step35EntryFvOut,s6Step35EntryGvOut⟩
def s6Step35FrontHead : WindowBank := ⟨s6Step35HeadFOut,s6Step35HeadGOut,s6Step35HeadFvOut,s6Step35HeadGvOut⟩
def s6Step35FrontOut : WindowBank := ⟨s6Step35ExitFOut,s6Step35ExitGOut,s6Step35ExitFvOut,s6Step35ExitGvOut⟩
def s6Step35FrontSigmaArena : Arena := ⟨s6Step35EntryGvAfter.live∪{802},Finset.union_subset s6Step35EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step35Front_sigma : s6Step35EntryGvAfter.checkBorrow 1 [802]=some s6Step35FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step35EntryGvAfter,s6Step35EntryGAfter,arenaWires]
  · rfl
theorem s6Step35Front_branch : s6Step35FrontSigmaArena.checkBorrow 1 [857]=some s6Step35HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step35FrontSigmaArena,s6Step35EntryGvAfter,s6Step35EntryGAfter,arenaWires]
  · change s6Step35HeadGBefore.live=(s6Step35EntryGvAfter.live∪{802})∪{857}
    apply hmrArena_union_pair_of_filter_check s6Step35EntryGvAfter s6Step35HeadGBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 802 857 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step35Front_entry : HmrFrontEntryValid s6Step35EntryFBefore s6Step35FrontBank 251 30 ⟨250,251,31,30⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step35FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step35EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step35EntryFBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step35FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step35FrontPlan : HmrSourceFront := ⟨s6Step35EntryGvAfter,s6Step35FrontPair,(growRow 795 s6Step35EntryFFresh ++ (growRow 777 s6Step35EntryGFresh ++ (growRow 776 s6Step35EntryFvFresh ++ (growRow 775 s6Step35EntryGvFresh ++ [])))),s6Step35FrontSigmaArena,[802],s6Step35HeadGBefore,[857],
  s6Step35HeadFvAfter,s6Step35FrontHead,(growRow 777 s6Step35HeadGFresh ++ (growRow 795 s6Step35HeadFFresh ++ (growRow 775 s6Step35HeadGvFresh ++ (growRow 776 s6Step35HeadFvFresh ++ [])))),s6Step35F4Plan,s6Step35CounterDuring,s6Step35CounterWork,s6Step35ExitGvAfter,s6Step35FrontOut,(shrinkRow 777 s6Step35ExitGExtra ++ (shrinkRow 795 s6Step35ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step35ExitGvExtra ++ []))))⟩
theorem s6Step35Front_checked : compileHmrSourceFrontLog s6Step35EntryFBefore s6Step35FrontBank 251 30 ⟨250,251,31,30⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step35FrontLog=some s6Step35FrontPlan := by
  have pairEq : s6Step35FrontPair=⟨s6Step35HeadFRow,s6Step35HeadGRow,s6Step35HeadFvRow,s6Step35HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step35FrontHead=⟨s6Step35ExitFRow,s6Step35ExitGRow,s6Step35ExitFvRow,s6Step35ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step35Add0A=s6Step35FrontHead.f.wires := by decide +kernel
  have gEq : s6Step35Add0B=s6Step35FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step35Add1A=s6Step35FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step35Add1B=s6Step35FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step35EntryFBefore s6Step35FrontBank 251 30 ⟨250,251,31,30⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step35FrontLog s6Step35FrontPlan
  · exact s6Step35Front_entry
  · exact s6Step35EntryBank_checked
  · exact s6Step35Front_sigma
  · rfl
  · exact s6Step35Front_branch
  · rfl
  · simpa only [s6Step35FrontPlan,pairEq] using s6Step35HeadBank_checked
  · simpa only [s6Step35FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step35F4_checked
  · exact s6Step35Counter_checked
  · rfl
  · simpa only [s6Step35FrontPlan,headEq] using s6Step35ExitBank_checked
def s6Step36FrontLog : HmrFrontAllocationLog := ⟨⟨[[857], [], [], [802]],[[779], [859], [874], [887]],[[], [], [], []]⟩,[868],[793],[877],[855],[803, 922, 879, 784, 861, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[803, 922, 879, 784, 861, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904],[877, 855, 803, 922]⟩
def s6Step36FrontBank : WindowBank := ⟨s6Step36EntryFRow,s6Step36EntryGRow,s6Step36EntryFvRow,s6Step36EntryGvRow⟩
def s6Step36FrontPair : WindowBank := ⟨s6Step36EntryFOut,s6Step36EntryGOut,s6Step36EntryFvOut,s6Step36EntryGvOut⟩
def s6Step36FrontHead : WindowBank := ⟨s6Step36HeadFOut,s6Step36HeadGOut,s6Step36HeadFvOut,s6Step36HeadGvOut⟩
def s6Step36FrontOut : WindowBank := ⟨s6Step36ExitFOut,s6Step36ExitGOut,s6Step36ExitFvOut,s6Step36ExitGvOut⟩
def s6Step36FrontSigmaArena : Arena := ⟨s6Step36EntryGvAfter.live∪{868},Finset.union_subset s6Step36EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step36Front_sigma : s6Step36EntryGvAfter.checkBorrow 1 [868]=some s6Step36FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step36EntryGvAfter,arenaWires]
  · rfl
theorem s6Step36Front_branch : s6Step36FrontSigmaArena.checkBorrow 1 [793]=some s6Step36HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step36FrontSigmaArena,s6Step36EntryGvAfter,arenaWires]
  · change s6Step36HeadGBefore.live=(s6Step36EntryGvAfter.live∪{868})∪{793}
    apply hmrArena_union_pair_of_filter_check s6Step36EntryGvAfter s6Step36HeadGBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,868),(869,871),(872,874),(875,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 868 793 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step36Front_entry : HmrFrontEntryValid s6Step36EntryFBefore s6Step36FrontBank 251 31 ⟨250,250,31,31⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step36FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step36EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step36EntryFBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,868),(869,871),(872,874),(875,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step36FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step36FrontPlan : HmrSourceFront := ⟨s6Step36EntryGvAfter,s6Step36FrontPair,(growRow 795 s6Step36EntryFFresh ++ (growRow 777 s6Step36EntryGFresh ++ (growRow 776 s6Step36EntryFvFresh ++ (growRow 775 s6Step36EntryGvFresh ++ [])))),s6Step36FrontSigmaArena,[868],s6Step36HeadGBefore,[793],
  s6Step36HeadFvAfter,s6Step36FrontHead,(growRow 777 s6Step36HeadGFresh ++ (growRow 795 s6Step36HeadFFresh ++ (growRow 775 s6Step36HeadGvFresh ++ (growRow 776 s6Step36HeadFvFresh ++ [])))),s6Step36F4Plan,s6Step36CounterDuring,s6Step36CounterWork,s6Step36ExitGvAfter,s6Step36FrontOut,(shrinkRow 777 s6Step36ExitGExtra ++ (shrinkRow 795 s6Step36ExitFExtra ++ (shrinkRow 776 s6Step36ExitFvExtra ++ (shrinkRow 775 s6Step36ExitGvExtra ++ []))))⟩
theorem s6Step36Front_checked : compileHmrSourceFrontLog s6Step36EntryFBefore s6Step36FrontBank 251 31 ⟨250,250,31,31⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step36FrontLog=some s6Step36FrontPlan := by
  have pairEq : s6Step36FrontPair=⟨s6Step36HeadFRow,s6Step36HeadGRow,s6Step36HeadFvRow,s6Step36HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step36FrontHead=⟨s6Step36ExitFRow,s6Step36ExitGRow,s6Step36ExitFvRow,s6Step36ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step36Add0A=s6Step36FrontHead.f.wires := by decide +kernel
  have gEq : s6Step36Add0B=s6Step36FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step36Add1A=s6Step36FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step36Add1B=s6Step36FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step36EntryFBefore s6Step36FrontBank 251 31 ⟨250,250,31,31⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step36FrontLog s6Step36FrontPlan
  · exact s6Step36Front_entry
  · exact s6Step36EntryBank_checked
  · exact s6Step36Front_sigma
  · rfl
  · exact s6Step36Front_branch
  · rfl
  · simpa only [s6Step36FrontPlan,pairEq] using s6Step36HeadBank_checked
  · simpa only [s6Step36FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step36F4_checked
  · exact s6Step36Counter_checked
  · rfl
  · simpa only [s6Step36FrontPlan,headEq] using s6Step36ExitBank_checked
def s6Step37FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[874], [887], [857], [859]],[[], [], [], []]⟩,[793],[868],[875],[779],[877, 855, 803, 922, 879, 784, 861, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[877, 855, 803, 922, 879, 784, 861, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825],[875, 779, 877, 855]⟩
def s6Step37FrontBank : WindowBank := ⟨s6Step37EntryFRow,s6Step37EntryGRow,s6Step37EntryFvRow,s6Step37EntryGvRow⟩
def s6Step37FrontPair : WindowBank := ⟨s6Step37EntryFOut,s6Step37EntryGOut,s6Step37EntryFvOut,s6Step37EntryGvOut⟩
def s6Step37FrontHead : WindowBank := ⟨s6Step37HeadFOut,s6Step37HeadGOut,s6Step37HeadFvOut,s6Step37HeadGvOut⟩
def s6Step37FrontOut : WindowBank := ⟨s6Step37ExitFOut,s6Step37ExitGOut,s6Step37ExitFvOut,s6Step37ExitGvOut⟩
def s6Step37FrontSigmaArena : Arena := ⟨s6Step37EntryGvAfter.live∪{793},Finset.union_subset s6Step37EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step37Front_sigma : s6Step37EntryGvAfter.checkBorrow 1 [793]=some s6Step37FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step37EntryGvAfter,s6Step37EntryFBefore,arenaWires]
  · rfl
theorem s6Step37Front_branch : s6Step37FrontSigmaArena.checkBorrow 1 [868]=some s6Step37HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step37FrontSigmaArena,s6Step37EntryGvAfter,s6Step37EntryFBefore,arenaWires]
  · change s6Step37HeadGBefore.live=(s6Step37EntryGvAfter.live∪{793})∪{868}
    apply hmrArena_union_pair_of_filter_check s6Step37EntryGvAfter s6Step37HeadGBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 793 868 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step37Front_entry : HmrFrontEntryValid s6Step37EntryFBefore s6Step37FrontBank 250 31 ⟨250,249,32,32⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step37FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step37EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step37EntryFBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step37FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step37FrontPlan : HmrSourceFront := ⟨s6Step37EntryGvAfter,s6Step37FrontPair,(growRow 795 s6Step37EntryFFresh ++ (growRow 777 s6Step37EntryGFresh ++ (growRow 776 s6Step37EntryFvFresh ++ (growRow 775 s6Step37EntryGvFresh ++ [])))),s6Step37FrontSigmaArena,[793],s6Step37HeadGBefore,[868],
  s6Step37HeadFvAfter,s6Step37FrontHead,(growRow 777 s6Step37HeadGFresh ++ (growRow 795 s6Step37HeadFFresh ++ (growRow 775 s6Step37HeadGvFresh ++ (growRow 776 s6Step37HeadFvFresh ++ [])))),s6Step37F4Plan,s6Step37CounterDuring,s6Step37CounterWork,s6Step37ExitGvAfter,s6Step37FrontOut,(shrinkRow 777 s6Step37ExitGExtra ++ (shrinkRow 795 s6Step37ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))⟩
theorem s6Step37Front_checked : compileHmrSourceFrontLog s6Step37EntryFBefore s6Step37FrontBank 250 31 ⟨250,249,32,32⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step37FrontLog=some s6Step37FrontPlan := by
  have pairEq : s6Step37FrontPair=⟨s6Step37HeadFRow,s6Step37HeadGRow,s6Step37HeadFvRow,s6Step37HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step37FrontHead=⟨s6Step37ExitFRow,s6Step37ExitGRow,s6Step37ExitFvRow,s6Step37ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step37Add0A=s6Step37FrontHead.f.wires := by decide +kernel
  have gEq : s6Step37Add0B=s6Step37FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step37Add1A=s6Step37FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step37Add1B=s6Step37FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step37EntryFBefore s6Step37FrontBank 250 31 ⟨250,249,32,32⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step37FrontLog s6Step37FrontPlan
  · exact s6Step37Front_entry
  · exact s6Step37EntryBank_checked
  · exact s6Step37Front_sigma
  · rfl
  · exact s6Step37Front_branch
  · rfl
  · simpa only [s6Step37FrontPlan,pairEq] using s6Step37HeadBank_checked
  · simpa only [s6Step37FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step37F4_checked
  · exact s6Step37Counter_checked
  · rfl
  · simpa only [s6Step37FrontPlan,headEq] using s6Step37ExitBank_checked
def s6Step38FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [868], [], []],[[887], [874], [875], [779]],[[], [], [], []]⟩,[793],[858],[877],[855],[803, 922, 879, 784, 861, 785, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[803, 922, 879, 784, 861, 785, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924],[877, 855, 803, 922]⟩
def s6Step38FrontBank : WindowBank := ⟨s6Step38EntryFRow,s6Step38EntryGRow,s6Step38EntryFvRow,s6Step38EntryGvRow⟩
def s6Step38FrontPair : WindowBank := ⟨s6Step38EntryFOut,s6Step38EntryGOut,s6Step38EntryFvOut,s6Step38EntryGvOut⟩
def s6Step38FrontHead : WindowBank := ⟨s6Step38HeadFOut,s6Step38HeadGOut,s6Step38HeadFvOut,s6Step38HeadGvOut⟩
def s6Step38FrontOut : WindowBank := ⟨s6Step38ExitFOut,s6Step38ExitGOut,s6Step38ExitFvOut,s6Step38ExitGvOut⟩
def s6Step38FrontSigmaArena : Arena := ⟨s6Step38EntryGvAfter.live∪{793},Finset.union_subset s6Step38EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step38Front_sigma : s6Step38EntryGvAfter.checkBorrow 1 [793]=some s6Step38FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step38EntryGvAfter,s6Step38EntryGAfter,arenaWires]
  · rfl
theorem s6Step38Front_branch : s6Step38FrontSigmaArena.checkBorrow 1 [858]=some s6Step38HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step38FrontSigmaArena,s6Step38EntryGvAfter,s6Step38EntryGAfter,arenaWires]
  · change s6Step38HeadGBefore.live=(s6Step38EntryGvAfter.live∪{793})∪{858}
    apply hmrArena_union_pair_of_filter_check s6Step38EntryGvAfter s6Step38HeadGBefore (fun q => ([(0,779),(780,782),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 793 858 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step38Front_entry : HmrFrontEntryValid s6Step38EntryFBefore s6Step38FrontBank 250 32 ⟨249,249,32,32⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step38FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step38EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step38EntryFBefore (fun q => ([(0,779),(780,782),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step38FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step38FrontPlan : HmrSourceFront := ⟨s6Step38EntryGvAfter,s6Step38FrontPair,(growRow 795 s6Step38EntryFFresh ++ (growRow 777 s6Step38EntryGFresh ++ (growRow 776 s6Step38EntryFvFresh ++ (growRow 775 s6Step38EntryGvFresh ++ [])))),s6Step38FrontSigmaArena,[793],s6Step38HeadGBefore,[858],
  s6Step38HeadFvAfter,s6Step38FrontHead,(growRow 777 s6Step38HeadGFresh ++ (growRow 795 s6Step38HeadFFresh ++ (growRow 775 s6Step38HeadGvFresh ++ (growRow 776 s6Step38HeadFvFresh ++ [])))),s6Step38F4Plan,s6Step38CounterDuring,s6Step38CounterWork,s6Step38ExitGvAfter,s6Step38FrontOut,(shrinkRow 777 s6Step38ExitGExtra ++ (shrinkRow 795 s6Step38ExitFExtra ++ (shrinkRow 776 s6Step38ExitFvExtra ++ (shrinkRow 775 s6Step38ExitGvExtra ++ []))))⟩
theorem s6Step38Front_checked : compileHmrSourceFrontLog s6Step38EntryFBefore s6Step38FrontBank 250 32 ⟨249,249,32,32⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step38FrontLog=some s6Step38FrontPlan := by
  have pairEq : s6Step38FrontPair=⟨s6Step38HeadFRow,s6Step38HeadGRow,s6Step38HeadFvRow,s6Step38HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step38FrontHead=⟨s6Step38ExitFRow,s6Step38ExitGRow,s6Step38ExitFvRow,s6Step38ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step38Add0A=s6Step38FrontHead.f.wires := by decide +kernel
  have gEq : s6Step38Add0B=s6Step38FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step38Add1A=s6Step38FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step38Add1B=s6Step38FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step38EntryFBefore s6Step38FrontBank 250 32 ⟨249,249,32,32⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step38FrontLog s6Step38FrontPlan
  · exact s6Step38Front_entry
  · exact s6Step38EntryBank_checked
  · exact s6Step38Front_sigma
  · rfl
  · exact s6Step38Front_branch
  · rfl
  · simpa only [s6Step38FrontPlan,pairEq] using s6Step38HeadBank_checked
  · simpa only [s6Step38FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step38F4_checked
  · exact s6Step38Counter_checked
  · rfl
  · simpa only [s6Step38FrontPlan,headEq] using s6Step38ExitBank_checked
def s6Step39FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[907], [875], [779], [874]],[[], [], [], []]⟩,[858],[793],[868],[887],[877, 855, 803, 922, 879, 784, 861, 785, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[877, 855, 803, 922, 879, 784, 861, 785, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904],[868, 887, 877, 855]⟩
def s6Step39FrontBank : WindowBank := ⟨s6Step39EntryFRow,s6Step39EntryGRow,s6Step39EntryFvRow,s6Step39EntryGvRow⟩
def s6Step39FrontPair : WindowBank := ⟨s6Step39EntryFOut,s6Step39EntryGOut,s6Step39EntryFvOut,s6Step39EntryGvOut⟩
def s6Step39FrontHead : WindowBank := ⟨s6Step39HeadFOut,s6Step39HeadGOut,s6Step39HeadFvOut,s6Step39HeadGvOut⟩
def s6Step39FrontOut : WindowBank := ⟨s6Step39ExitFOut,s6Step39ExitGOut,s6Step39ExitFvOut,s6Step39ExitGvOut⟩
def s6Step39FrontSigmaArena : Arena := ⟨s6Step39EntryGvAfter.live∪{858},Finset.union_subset s6Step39EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step39Front_sigma : s6Step39EntryGvAfter.checkBorrow 1 [858]=some s6Step39FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step39EntryGvAfter,s6Step39EntryFBefore,arenaWires]
  · rfl
theorem s6Step39Front_branch : s6Step39FrontSigmaArena.checkBorrow 1 [793]=some s6Step39HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step39FrontSigmaArena,s6Step39EntryGvAfter,s6Step39EntryFBefore,arenaWires]
  · change s6Step39HeadGBefore.live=(s6Step39EntryGvAfter.live∪{858})∪{793}
    apply hmrArena_union_pair_of_filter_check s6Step39EntryGvAfter s6Step39HeadGBefore (fun q => ([(0,779),(780,782),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 858 793 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step39Front_entry : HmrFrontEntryValid s6Step39EntryFBefore s6Step39FrontBank 249 32 ⟨249,248,33,32⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step39FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step39EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step39EntryFBefore (fun q => ([(0,779),(780,782),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step39FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step39FrontPlan : HmrSourceFront := ⟨s6Step39EntryGvAfter,s6Step39FrontPair,(growRow 795 s6Step39EntryFFresh ++ (growRow 777 s6Step39EntryGFresh ++ (growRow 776 s6Step39EntryFvFresh ++ (growRow 775 s6Step39EntryGvFresh ++ [])))),s6Step39FrontSigmaArena,[858],s6Step39HeadGBefore,[793],
  s6Step39HeadFvAfter,s6Step39FrontHead,(growRow 777 s6Step39HeadGFresh ++ (growRow 795 s6Step39HeadFFresh ++ (growRow 775 s6Step39HeadGvFresh ++ (growRow 776 s6Step39HeadFvFresh ++ [])))),s6Step39F4Plan,s6Step39CounterDuring,s6Step39CounterWork,s6Step39ExitGvAfter,s6Step39FrontOut,(shrinkRow 777 s6Step39ExitGExtra ++ (shrinkRow 795 s6Step39ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step39ExitGvExtra ++ []))))⟩
theorem s6Step39Front_checked : compileHmrSourceFrontLog s6Step39EntryFBefore s6Step39FrontBank 249 32 ⟨249,248,33,32⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step39FrontLog=some s6Step39FrontPlan := by
  have pairEq : s6Step39FrontPair=⟨s6Step39HeadFRow,s6Step39HeadGRow,s6Step39HeadFvRow,s6Step39HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step39FrontHead=⟨s6Step39ExitFRow,s6Step39ExitGRow,s6Step39ExitFvRow,s6Step39ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step39Add0A=s6Step39FrontHead.f.wires := by decide +kernel
  have gEq : s6Step39Add0B=s6Step39FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step39Add1A=s6Step39FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step39Add1B=s6Step39FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step39EntryFBefore s6Step39FrontBank 249 32 ⟨249,248,33,32⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step39FrontLog s6Step39FrontPlan
  · exact s6Step39Front_entry
  · exact s6Step39EntryBank_checked
  · exact s6Step39Front_sigma
  · rfl
  · exact s6Step39Front_branch
  · rfl
  · simpa only [s6Step39FrontPlan,pairEq] using s6Step39HeadBank_checked
  · simpa only [s6Step39FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step39F4_checked
  · exact s6Step39Counter_checked
  · rfl
  · simpa only [s6Step39FrontPlan,headEq] using s6Step39ExitBank_checked
def s6Step40FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [793], [], [858]],[[875], [907], [868], [887]],[[], [], [], []]⟩,[845],[779],[877],[855],[803, 922, 879, 784, 861, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[803, 922, 879, 784, 861, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894],[877, 855, 803, 922]⟩
def s6Step40FrontBank : WindowBank := ⟨s6Step40EntryFRow,s6Step40EntryGRow,s6Step40EntryFvRow,s6Step40EntryGvRow⟩
def s6Step40FrontPair : WindowBank := ⟨s6Step40EntryFOut,s6Step40EntryGOut,s6Step40EntryFvOut,s6Step40EntryGvOut⟩
def s6Step40FrontHead : WindowBank := ⟨s6Step40HeadFOut,s6Step40HeadGOut,s6Step40HeadFvOut,s6Step40HeadGvOut⟩
def s6Step40FrontOut : WindowBank := ⟨s6Step40ExitFOut,s6Step40ExitGOut,s6Step40ExitFvOut,s6Step40ExitGvOut⟩
def s6Step40FrontSigmaArena : Arena := ⟨s6Step40EntryGvAfter.live∪{845},Finset.union_subset s6Step40EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step40Front_sigma : s6Step40EntryGvAfter.checkBorrow 1 [845]=some s6Step40FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step40EntryGvAfter,arenaWires]
  · rfl
theorem s6Step40Front_branch : s6Step40FrontSigmaArena.checkBorrow 1 [779]=some s6Step40HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step40FrontSigmaArena,s6Step40EntryGvAfter,arenaWires]
  · change s6Step40HeadGBefore.live=(s6Step40EntryGvAfter.live∪{845})∪{779}
    apply hmrArena_union_pair_of_filter_check s6Step40EntryGvAfter s6Step40HeadGBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 845 779 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step40Front_entry : HmrFrontEntryValid s6Step40EntryFBefore s6Step40FrontBank 249 33 ⟨248,248,34,33⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step40FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step40EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step40EntryFBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,858),(859,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step40FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step40FrontPlan : HmrSourceFront := ⟨s6Step40EntryGvAfter,s6Step40FrontPair,(growRow 795 s6Step40EntryFFresh ++ (growRow 777 s6Step40EntryGFresh ++ (growRow 776 s6Step40EntryFvFresh ++ (growRow 775 s6Step40EntryGvFresh ++ [])))),s6Step40FrontSigmaArena,[845],s6Step40HeadGBefore,[779],
  s6Step40HeadFvAfter,s6Step40FrontHead,(growRow 777 s6Step40HeadGFresh ++ (growRow 795 s6Step40HeadFFresh ++ (growRow 775 s6Step40HeadGvFresh ++ (growRow 776 s6Step40HeadFvFresh ++ [])))),s6Step40F4Plan,s6Step40CounterDuring,s6Step40CounterWork,s6Step40ExitGvAfter,s6Step40FrontOut,(shrinkRow 777 s6Step40ExitGExtra ++ (shrinkRow 795 s6Step40ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step40ExitGvExtra ++ []))))⟩
theorem s6Step40Front_checked : compileHmrSourceFrontLog s6Step40EntryFBefore s6Step40FrontBank 249 33 ⟨248,248,34,33⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step40FrontLog=some s6Step40FrontPlan := by
  have pairEq : s6Step40FrontPair=⟨s6Step40HeadFRow,s6Step40HeadGRow,s6Step40HeadFvRow,s6Step40HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step40FrontHead=⟨s6Step40ExitFRow,s6Step40ExitGRow,s6Step40ExitFvRow,s6Step40ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step40Add0A=s6Step40FrontHead.f.wires := by decide +kernel
  have gEq : s6Step40Add0B=s6Step40FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step40Add1A=s6Step40FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step40Add1B=s6Step40FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step40EntryFBefore s6Step40FrontBank 249 33 ⟨248,248,34,33⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step40FrontLog s6Step40FrontPlan
  · exact s6Step40Front_entry
  · exact s6Step40EntryBank_checked
  · exact s6Step40Front_sigma
  · rfl
  · exact s6Step40Front_branch
  · rfl
  · simpa only [s6Step40FrontPlan,pairEq] using s6Step40HeadBank_checked
  · simpa only [s6Step40FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step40F4_checked
  · exact s6Step40Counter_checked
  · rfl
  · simpa only [s6Step40FrontPlan,headEq] using s6Step40ExitBank_checked
def s6Step41FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [779]],[[868], [907], [793], [875]],[[], [], [], []]⟩,[845],[908],[877],[855],[803, 922, 879, 784, 861, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[803, 922, 879, 784, 861, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826],[877, 855, 803, 922]⟩
def s6Step41FrontBank : WindowBank := ⟨s6Step41EntryFRow,s6Step41EntryGRow,s6Step41EntryFvRow,s6Step41EntryGvRow⟩
def s6Step41FrontPair : WindowBank := ⟨s6Step41EntryFOut,s6Step41EntryGOut,s6Step41EntryFvOut,s6Step41EntryGvOut⟩
def s6Step41FrontHead : WindowBank := ⟨s6Step41HeadFOut,s6Step41HeadGOut,s6Step41HeadFvOut,s6Step41HeadGvOut⟩
def s6Step41FrontOut : WindowBank := ⟨s6Step41ExitFOut,s6Step41ExitGOut,s6Step41ExitFvOut,s6Step41ExitGvOut⟩
def s6Step41FrontSigmaArena : Arena := ⟨s6Step41EntryGvAfter.live∪{845},Finset.union_subset s6Step41EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step41Front_sigma : s6Step41EntryGvAfter.checkBorrow 1 [845]=some s6Step41FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step41EntryGvAfter,arenaWires]
  · rfl
theorem s6Step41Front_branch : s6Step41FrontSigmaArena.checkBorrow 1 [908]=some s6Step41HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step41FrontSigmaArena,s6Step41EntryGvAfter,arenaWires]
  · change s6Step41HeadGBefore.live=(s6Step41EntryGvAfter.live∪{845})∪{908}
    apply hmrArena_union_pair_of_filter_check s6Step41EntryGvAfter s6Step41HeadGBefore (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 845 908 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step41Front_entry : HmrFrontEntryValid s6Step41EntryFBefore s6Step41FrontBank 248 34 ⟨248,248,34,33⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step41FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step41EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step41EntryFBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step41FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step41FrontPlan : HmrSourceFront := ⟨s6Step41EntryGvAfter,s6Step41FrontPair,(growRow 795 s6Step41EntryFFresh ++ (growRow 777 s6Step41EntryGFresh ++ (growRow 776 s6Step41EntryFvFresh ++ (growRow 775 s6Step41EntryGvFresh ++ [])))),s6Step41FrontSigmaArena,[845],s6Step41HeadGBefore,[908],
  s6Step41HeadFvAfter,s6Step41FrontHead,(growRow 777 s6Step41HeadGFresh ++ (growRow 795 s6Step41HeadFFresh ++ (growRow 775 s6Step41HeadGvFresh ++ (growRow 776 s6Step41HeadFvFresh ++ [])))),s6Step41F4Plan,s6Step41CounterDuring,s6Step41CounterWork,s6Step41ExitGvAfter,s6Step41FrontOut,(shrinkRow 777 s6Step41ExitGExtra ++ (shrinkRow 795 s6Step41ExitFExtra ++ (shrinkRow 776 s6Step41ExitFvExtra ++ (shrinkRow 775 s6Step41ExitGvExtra ++ []))))⟩
theorem s6Step41Front_checked : compileHmrSourceFrontLog s6Step41EntryFBefore s6Step41FrontBank 248 34 ⟨248,248,34,33⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step41FrontLog=some s6Step41FrontPlan := by
  have pairEq : s6Step41FrontPair=⟨s6Step41HeadFRow,s6Step41HeadGRow,s6Step41HeadFvRow,s6Step41HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step41FrontHead=⟨s6Step41ExitFRow,s6Step41ExitGRow,s6Step41ExitFvRow,s6Step41ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step41Add0A=s6Step41FrontHead.f.wires := by decide +kernel
  have gEq : s6Step41Add0B=s6Step41FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step41Add1A=s6Step41FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step41Add1B=s6Step41FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step41EntryFBefore s6Step41FrontBank 248 34 ⟨248,248,34,33⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step41FrontLog s6Step41FrontPlan
  · exact s6Step41Front_entry
  · exact s6Step41EntryBank_checked
  · exact s6Step41Front_sigma
  · rfl
  · exact s6Step41Front_branch
  · rfl
  · simpa only [s6Step41FrontPlan,pairEq] using s6Step41HeadBank_checked
  · simpa only [s6Step41FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step41F4_checked
  · exact s6Step41Counter_checked
  · rfl
  · simpa only [s6Step41FrontPlan,headEq] using s6Step41ExitBank_checked
def s6Step42FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [908]],[[793], [875], [907], [868]],[[], [], [], []]⟩,[845],[779],[877],[855],[803, 922, 879, 784, 861, 921, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[803, 922, 879, 784, 861, 921, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923],[877, 855, 803, 922]⟩
def s6Step42FrontBank : WindowBank := ⟨s6Step42EntryFRow,s6Step42EntryGRow,s6Step42EntryFvRow,s6Step42EntryGvRow⟩
def s6Step42FrontPair : WindowBank := ⟨s6Step42EntryFOut,s6Step42EntryGOut,s6Step42EntryFvOut,s6Step42EntryGvOut⟩
def s6Step42FrontHead : WindowBank := ⟨s6Step42HeadFOut,s6Step42HeadGOut,s6Step42HeadFvOut,s6Step42HeadGvOut⟩
def s6Step42FrontOut : WindowBank := ⟨s6Step42ExitFOut,s6Step42ExitGOut,s6Step42ExitFvOut,s6Step42ExitGvOut⟩
def s6Step42FrontSigmaArena : Arena := ⟨s6Step42EntryGvAfter.live∪{845},Finset.union_subset s6Step42EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step42Front_sigma : s6Step42EntryGvAfter.checkBorrow 1 [845]=some s6Step42FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step42EntryGvAfter,arenaWires]
  · rfl
theorem s6Step42Front_branch : s6Step42FrontSigmaArena.checkBorrow 1 [779]=some s6Step42HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step42FrontSigmaArena,s6Step42EntryGvAfter,arenaWires]
  · change s6Step42HeadGBefore.live=(s6Step42EntryGvAfter.live∪{845})∪{779}
    apply hmrArena_union_pair_of_filter_check s6Step42EntryGvAfter s6Step42HeadGBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 845 779 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step42Front_entry : HmrFrontEntryValid s6Step42EntryFBefore s6Step42FrontBank 248 34 ⟨247,247,34,35⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step42FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step42EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step42EntryFBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step42FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step42FrontPlan : HmrSourceFront := ⟨s6Step42EntryGvAfter,s6Step42FrontPair,(growRow 795 s6Step42EntryFFresh ++ (growRow 777 s6Step42EntryGFresh ++ (growRow 776 s6Step42EntryFvFresh ++ (growRow 775 s6Step42EntryGvFresh ++ [])))),s6Step42FrontSigmaArena,[845],s6Step42HeadGBefore,[779],
  s6Step42HeadFvAfter,s6Step42FrontHead,(growRow 777 s6Step42HeadGFresh ++ (growRow 795 s6Step42HeadFFresh ++ (growRow 775 s6Step42HeadGvFresh ++ (growRow 776 s6Step42HeadFvFresh ++ [])))),s6Step42F4Plan,s6Step42CounterDuring,s6Step42CounterWork,s6Step42ExitGvAfter,s6Step42FrontOut,(shrinkRow 777 s6Step42ExitGExtra ++ (shrinkRow 795 s6Step42ExitFExtra ++ (shrinkRow 776 s6Step42ExitFvExtra ++ (growRow 775 [] ++ []))))⟩
theorem s6Step42Front_checked : compileHmrSourceFrontLog s6Step42EntryFBefore s6Step42FrontBank 248 34 ⟨247,247,34,35⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step42FrontLog=some s6Step42FrontPlan := by
  have pairEq : s6Step42FrontPair=⟨s6Step42HeadFRow,s6Step42HeadGRow,s6Step42HeadFvRow,s6Step42HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step42FrontHead=⟨s6Step42ExitFRow,s6Step42ExitGRow,s6Step42ExitFvRow,s6Step42ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step42Add0A=s6Step42FrontHead.f.wires := by decide +kernel
  have gEq : s6Step42Add0B=s6Step42FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step42Add1A=s6Step42FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step42Add1B=s6Step42FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step42EntryFBefore s6Step42FrontBank 248 34 ⟨247,247,34,35⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step42FrontLog s6Step42FrontPlan
  · exact s6Step42Front_entry
  · exact s6Step42EntryBank_checked
  · exact s6Step42Front_sigma
  · rfl
  · exact s6Step42Front_branch
  · rfl
  · simpa only [s6Step42FrontPlan,pairEq] using s6Step42HeadBank_checked
  · simpa only [s6Step42FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step42F4_checked
  · exact s6Step42Counter_checked
  · rfl
  · simpa only [s6Step42FrontPlan,headEq] using s6Step42ExitBank_checked
def s6Step43FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [779], []],[[805], [868], [875], [793]],[[], [], [], []]⟩,[845],[890],[877],[855],[803, 922, 879, 784, 861, 921, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[803, 922, 879, 784, 861, 921, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809],[877, 855, 803, 922]⟩
def s6Step43FrontBank : WindowBank := ⟨s6Step43EntryFRow,s6Step43EntryGRow,s6Step43EntryFvRow,s6Step43EntryGvRow⟩
def s6Step43FrontPair : WindowBank := ⟨s6Step43EntryFOut,s6Step43EntryGOut,s6Step43EntryFvOut,s6Step43EntryGvOut⟩
def s6Step43FrontHead : WindowBank := ⟨s6Step43HeadFOut,s6Step43HeadGOut,s6Step43HeadFvOut,s6Step43HeadGvOut⟩
def s6Step43FrontOut : WindowBank := ⟨s6Step43ExitFOut,s6Step43ExitGOut,s6Step43ExitFvOut,s6Step43ExitGvOut⟩
def s6Step43FrontSigmaArena : Arena := ⟨s6Step43EntryGvAfter.live∪{845},Finset.union_subset s6Step43EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step43Front_sigma : s6Step43EntryGvAfter.checkBorrow 1 [845]=some s6Step43FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step43EntryGvAfter,s6Step43EntryFvAfter,arenaWires]
  · rfl
theorem s6Step43Front_branch : s6Step43FrontSigmaArena.checkBorrow 1 [890]=some s6Step43HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step43FrontSigmaArena,s6Step43EntryGvAfter,s6Step43EntryFvAfter,arenaWires]
  · change s6Step43HeadGBefore.live=(s6Step43EntryGvAfter.live∪{845})∪{890}
    apply hmrArena_union_pair_of_filter_check s6Step43EntryGvAfter s6Step43HeadGBefore (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 845 890 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step43Front_entry : HmrFrontEntryValid s6Step43EntryFBefore s6Step43FrontBank 247 35 ⟨246,246,34,35⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step43FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step43EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step43EntryFBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step43FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step43FrontPlan : HmrSourceFront := ⟨s6Step43EntryGvAfter,s6Step43FrontPair,(growRow 795 s6Step43EntryFFresh ++ (growRow 777 s6Step43EntryGFresh ++ (growRow 776 s6Step43EntryFvFresh ++ (growRow 775 s6Step43EntryGvFresh ++ [])))),s6Step43FrontSigmaArena,[845],s6Step43HeadGBefore,[890],
  s6Step43HeadFvAfter,s6Step43FrontHead,(growRow 777 s6Step43HeadGFresh ++ (growRow 795 s6Step43HeadFFresh ++ (growRow 775 s6Step43HeadGvFresh ++ (growRow 776 s6Step43HeadFvFresh ++ [])))),s6Step43F4Plan,s6Step43CounterDuring,s6Step43CounterWork,s6Step43ExitGvAfter,s6Step43FrontOut,(shrinkRow 777 s6Step43ExitGExtra ++ (shrinkRow 795 s6Step43ExitFExtra ++ (shrinkRow 776 s6Step43ExitFvExtra ++ (shrinkRow 775 s6Step43ExitGvExtra ++ []))))⟩
theorem s6Step43Front_checked : compileHmrSourceFrontLog s6Step43EntryFBefore s6Step43FrontBank 247 35 ⟨246,246,34,35⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step43FrontLog=some s6Step43FrontPlan := by
  have pairEq : s6Step43FrontPair=⟨s6Step43HeadFRow,s6Step43HeadGRow,s6Step43HeadFvRow,s6Step43HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step43FrontHead=⟨s6Step43ExitFRow,s6Step43ExitGRow,s6Step43ExitFvRow,s6Step43ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step43Add0A=s6Step43FrontHead.f.wires := by decide +kernel
  have gEq : s6Step43Add0B=s6Step43FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step43Add1A=s6Step43FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step43Add1B=s6Step43FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step43EntryFBefore s6Step43FrontBank 247 35 ⟨246,246,34,35⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step43FrontLog s6Step43FrontPlan
  · exact s6Step43Front_entry
  · exact s6Step43EntryBank_checked
  · exact s6Step43Front_sigma
  · rfl
  · exact s6Step43Front_branch
  · rfl
  · simpa only [s6Step43FrontPlan,pairEq] using s6Step43HeadBank_checked
  · simpa only [s6Step43FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step43F4_checked
  · exact s6Step43Counter_checked
  · rfl
  · simpa only [s6Step43FrontPlan,headEq] using s6Step43ExitBank_checked
def s6Step44FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [890], []],[[796], [875], [779], [793]],[[], [], [], []]⟩,[845],[873],[868],[805],[877, 855, 803, 922, 879, 784, 921, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[877, 855, 803, 922, 879, 784, 921, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923],[868, 805, 877, 855]⟩
def s6Step44FrontBank : WindowBank := ⟨s6Step44EntryFRow,s6Step44EntryGRow,s6Step44EntryFvRow,s6Step44EntryGvRow⟩
def s6Step44FrontPair : WindowBank := ⟨s6Step44EntryFOut,s6Step44EntryGOut,s6Step44EntryFvOut,s6Step44EntryGvOut⟩
def s6Step44FrontHead : WindowBank := ⟨s6Step44HeadFOut,s6Step44HeadGOut,s6Step44HeadFvOut,s6Step44HeadGvOut⟩
def s6Step44FrontOut : WindowBank := ⟨s6Step44ExitFOut,s6Step44ExitGOut,s6Step44ExitFvOut,s6Step44ExitGvOut⟩
def s6Step44FrontSigmaArena : Arena := ⟨s6Step44EntryGvAfter.live∪{845},Finset.union_subset s6Step44EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step44Front_sigma : s6Step44EntryGvAfter.checkBorrow 1 [845]=some s6Step44FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step44EntryGvAfter,s6Step44EntryFvAfter,arenaWires]
  · rfl
theorem s6Step44Front_branch : s6Step44FrontSigmaArena.checkBorrow 1 [873]=some s6Step44HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step44FrontSigmaArena,s6Step44EntryGvAfter,s6Step44EntryFvAfter,arenaWires]
  · change s6Step44HeadGBefore.live=(s6Step44EntryGvAfter.live∪{845})∪{873}
    apply hmrArena_union_pair_of_filter_check s6Step44EntryGvAfter s6Step44HeadGBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 845 873 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step44Front_entry : HmrFrontEntryValid s6Step44EntryFBefore s6Step44FrontBank 246 35 ⟨246,245,35,35⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step44FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step44EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step44EntryFBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step44FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step44FrontPlan : HmrSourceFront := ⟨s6Step44EntryGvAfter,s6Step44FrontPair,(growRow 795 s6Step44EntryFFresh ++ (growRow 777 s6Step44EntryGFresh ++ (growRow 776 s6Step44EntryFvFresh ++ (growRow 775 s6Step44EntryGvFresh ++ [])))),s6Step44FrontSigmaArena,[845],s6Step44HeadGBefore,[873],
  s6Step44HeadFvAfter,s6Step44FrontHead,(growRow 777 s6Step44HeadGFresh ++ (growRow 795 s6Step44HeadFFresh ++ (growRow 775 s6Step44HeadGvFresh ++ (growRow 776 s6Step44HeadFvFresh ++ [])))),s6Step44F4Plan,s6Step44CounterDuring,s6Step44CounterWork,s6Step44ExitGvAfter,s6Step44FrontOut,(shrinkRow 777 s6Step44ExitGExtra ++ (shrinkRow 795 s6Step44ExitFExtra ++ (shrinkRow 776 s6Step44ExitFvExtra ++ (shrinkRow 775 s6Step44ExitGvExtra ++ []))))⟩
theorem s6Step44Front_checked : compileHmrSourceFrontLog s6Step44EntryFBefore s6Step44FrontBank 246 35 ⟨246,245,35,35⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step44FrontLog=some s6Step44FrontPlan := by
  have pairEq : s6Step44FrontPair=⟨s6Step44HeadFRow,s6Step44HeadGRow,s6Step44HeadFvRow,s6Step44HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step44FrontHead=⟨s6Step44ExitFRow,s6Step44ExitGRow,s6Step44ExitFvRow,s6Step44ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step44Add0A=s6Step44FrontHead.f.wires := by decide +kernel
  have gEq : s6Step44Add0B=s6Step44FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step44Add1A=s6Step44FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step44Add1B=s6Step44FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step44EntryFBefore s6Step44FrontBank 246 35 ⟨246,245,35,35⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step44FrontLog s6Step44FrontPlan
  · exact s6Step44Front_entry
  · exact s6Step44EntryBank_checked
  · exact s6Step44Front_sigma
  · rfl
  · exact s6Step44Front_branch
  · rfl
  · simpa only [s6Step44FrontPlan,pairEq] using s6Step44HeadBank_checked
  · simpa only [s6Step44FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step44F4_checked
  · exact s6Step44Counter_checked
  · rfl
  · simpa only [s6Step44FrontPlan,headEq] using s6Step44ExitBank_checked
def s6Step45FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [873], [], []],[[779], [793], [875], [796]],[[], [], [], []]⟩,[845],[856],[868],[805],[877, 855, 803, 922, 879, 784, 921, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[877, 855, 803, 922, 879, 784, 921, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923],[868, 805, 877, 855]⟩
def s6Step45FrontBank : WindowBank := ⟨s6Step45EntryFRow,s6Step45EntryGRow,s6Step45EntryFvRow,s6Step45EntryGvRow⟩
def s6Step45FrontPair : WindowBank := ⟨s6Step45EntryFOut,s6Step45EntryGOut,s6Step45EntryFvOut,s6Step45EntryGvOut⟩
def s6Step45FrontHead : WindowBank := ⟨s6Step45HeadFOut,s6Step45HeadGOut,s6Step45HeadFvOut,s6Step45HeadGvOut⟩
def s6Step45FrontOut : WindowBank := ⟨s6Step45ExitFOut,s6Step45ExitGOut,s6Step45ExitFvOut,s6Step45ExitGvOut⟩
def s6Step45FrontSigmaArena : Arena := ⟨s6Step45EntryGvAfter.live∪{845},Finset.union_subset s6Step45EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step45Front_sigma : s6Step45EntryGvAfter.checkBorrow 1 [845]=some s6Step45FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step45EntryGvAfter,s6Step45EntryGAfter,arenaWires]
  · rfl
theorem s6Step45Front_branch : s6Step45FrontSigmaArena.checkBorrow 1 [856]=some s6Step45HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step45FrontSigmaArena,s6Step45EntryGvAfter,s6Step45EntryGAfter,arenaWires]
  · change s6Step45HeadGBefore.live=(s6Step45EntryGvAfter.live∪{845})∪{856}
    apply hmrArena_union_pair_of_filter_check s6Step45EntryGvAfter s6Step45HeadGBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(857,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 845 856 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step45Front_entry : HmrFrontEntryValid s6Step45EntryFBefore s6Step45FrontBank 246 35 ⟨245,245,36,35⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step45FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step45EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step45EntryFBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(857,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step45FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step45FrontPlan : HmrSourceFront := ⟨s6Step45EntryGvAfter,s6Step45FrontPair,(growRow 795 s6Step45EntryFFresh ++ (growRow 777 s6Step45EntryGFresh ++ (growRow 776 s6Step45EntryFvFresh ++ (growRow 775 s6Step45EntryGvFresh ++ [])))),s6Step45FrontSigmaArena,[845],s6Step45HeadGBefore,[856],
  s6Step45HeadFvAfter,s6Step45FrontHead,(growRow 777 s6Step45HeadGFresh ++ (growRow 795 s6Step45HeadFFresh ++ (growRow 775 s6Step45HeadGvFresh ++ (growRow 776 s6Step45HeadFvFresh ++ [])))),s6Step45F4Plan,s6Step45CounterDuring,s6Step45CounterWork,s6Step45ExitGvAfter,s6Step45FrontOut,(shrinkRow 777 s6Step45ExitGExtra ++ (shrinkRow 795 s6Step45ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step45ExitGvExtra ++ []))))⟩
theorem s6Step45Front_checked : compileHmrSourceFrontLog s6Step45EntryFBefore s6Step45FrontBank 246 35 ⟨245,245,36,35⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step45FrontLog=some s6Step45FrontPlan := by
  have pairEq : s6Step45FrontPair=⟨s6Step45HeadFRow,s6Step45HeadGRow,s6Step45HeadFvRow,s6Step45HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step45FrontHead=⟨s6Step45ExitFRow,s6Step45ExitGRow,s6Step45ExitFvRow,s6Step45ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step45Add0A=s6Step45FrontHead.f.wires := by decide +kernel
  have gEq : s6Step45Add0B=s6Step45FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step45Add1A=s6Step45FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step45Add1B=s6Step45FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step45EntryFBefore s6Step45FrontBank 246 35 ⟨245,245,36,35⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step45FrontLog s6Step45FrontPlan
  · exact s6Step45Front_entry
  · exact s6Step45EntryBank_checked
  · exact s6Step45Front_sigma
  · rfl
  · exact s6Step45Front_branch
  · rfl
  · simpa only [s6Step45FrontPlan,pairEq] using s6Step45HeadBank_checked
  · simpa only [s6Step45FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step45F4_checked
  · exact s6Step45Counter_checked
  · rfl
  · simpa only [s6Step45FrontPlan,headEq] using s6Step45ExitBank_checked
def s6Step46FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [856]],[[875], [793], [873], [779]],[[], [], [], []]⟩,[845],[863],[868],[805],[877, 855, 803, 922, 879, 784, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[877, 855, 803, 922, 879, 784, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897],[868, 805, 877, 855]⟩
def s6Step46FrontBank : WindowBank := ⟨s6Step46EntryFRow,s6Step46EntryGRow,s6Step46EntryFvRow,s6Step46EntryGvRow⟩
def s6Step46FrontPair : WindowBank := ⟨s6Step46EntryFOut,s6Step46EntryGOut,s6Step46EntryFvOut,s6Step46EntryGvOut⟩
def s6Step46FrontHead : WindowBank := ⟨s6Step46HeadFOut,s6Step46HeadGOut,s6Step46HeadFvOut,s6Step46HeadGvOut⟩
def s6Step46FrontOut : WindowBank := ⟨s6Step46ExitFOut,s6Step46ExitGOut,s6Step46ExitFvOut,s6Step46ExitGvOut⟩
def s6Step46FrontSigmaArena : Arena := ⟨s6Step46EntryGvAfter.live∪{845},Finset.union_subset s6Step46EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step46Front_sigma : s6Step46EntryGvAfter.checkBorrow 1 [845]=some s6Step46FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step46EntryGvAfter,arenaWires]
  · rfl
theorem s6Step46Front_branch : s6Step46FrontSigmaArena.checkBorrow 1 [863]=some s6Step46HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step46FrontSigmaArena,s6Step46EntryGvAfter,arenaWires]
  · change s6Step46HeadGBefore.live=(s6Step46EntryGvAfter.live∪{845})∪{863}
    apply hmrArena_union_pair_of_filter_check s6Step46EntryGvAfter s6Step46HeadGBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 845 863 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step46Front_entry : HmrFrontEntryValid s6Step46EntryFBefore s6Step46FrontBank 245 36 ⟨244,244,36,36⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step46FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step46EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step46EntryFBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(857,863),(864,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step46FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step46FrontPlan : HmrSourceFront := ⟨s6Step46EntryGvAfter,s6Step46FrontPair,(growRow 795 s6Step46EntryFFresh ++ (growRow 777 s6Step46EntryGFresh ++ (growRow 776 s6Step46EntryFvFresh ++ (growRow 775 s6Step46EntryGvFresh ++ [])))),s6Step46FrontSigmaArena,[845],s6Step46HeadGBefore,[863],
  s6Step46HeadFvAfter,s6Step46FrontHead,(growRow 777 s6Step46HeadGFresh ++ (growRow 795 s6Step46HeadFFresh ++ (growRow 775 s6Step46HeadGvFresh ++ (growRow 776 s6Step46HeadFvFresh ++ [])))),s6Step46F4Plan,s6Step46CounterDuring,s6Step46CounterWork,s6Step46ExitGvAfter,s6Step46FrontOut,(shrinkRow 777 s6Step46ExitGExtra ++ (shrinkRow 795 s6Step46ExitFExtra ++ (shrinkRow 776 s6Step46ExitFvExtra ++ (shrinkRow 775 s6Step46ExitGvExtra ++ []))))⟩
theorem s6Step46Front_checked : compileHmrSourceFrontLog s6Step46EntryFBefore s6Step46FrontBank 245 36 ⟨244,244,36,36⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step46FrontLog=some s6Step46FrontPlan := by
  have pairEq : s6Step46FrontPair=⟨s6Step46HeadFRow,s6Step46HeadGRow,s6Step46HeadFvRow,s6Step46HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step46FrontHead=⟨s6Step46ExitFRow,s6Step46ExitGRow,s6Step46ExitFvRow,s6Step46ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step46Add0A=s6Step46FrontHead.f.wires := by decide +kernel
  have gEq : s6Step46Add0B=s6Step46FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step46Add1A=s6Step46FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step46Add1B=s6Step46FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step46EntryFBefore s6Step46FrontBank 245 36 ⟨244,244,36,36⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step46FrontLog s6Step46FrontPlan
  · exact s6Step46Front_entry
  · exact s6Step46EntryBank_checked
  · exact s6Step46Front_sigma
  · rfl
  · exact s6Step46Front_branch
  · rfl
  · simpa only [s6Step46FrontPlan,pairEq] using s6Step46HeadBank_checked
  · simpa only [s6Step46FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step46F4_checked
  · exact s6Step46Counter_checked
  · rfl
  · simpa only [s6Step46FrontPlan,headEq] using s6Step46ExitBank_checked

end ECDSAAdd.Arithmetic.Paper935
