import ECDSAAdd.Arithmetic.Paper935.Arena
import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBorrow
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFront
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceArithmeticPartsChunk4
import ECDSAAdd.Arithmetic.Paper935.HmrSourceCounterPartsChunk4
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryBankChunk4
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk4
import ECDSAAdd.Arithmetic.Paper935.HmrSourceExitBankChunk4
import ECDSAAdd.Arithmetic.Paper935.HmrSourceExitPartsChunk4
import ECDSAAdd.Arithmetic.Paper935.HmrSourceF4PartsChunk4
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFront
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomBankChunk4
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomPartsChunk4
import ECDSAAdd.Arithmetic.Paper935.RowWindowResize
import ECDSAAdd.Arithmetic.Paper935.WindowAllocator
import ECDSAAdd.Arithmetic.Paper935.WindowBank
import ECDSAAdd.Arithmetic.Paper935.HmrFrontComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitialChunk3

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
