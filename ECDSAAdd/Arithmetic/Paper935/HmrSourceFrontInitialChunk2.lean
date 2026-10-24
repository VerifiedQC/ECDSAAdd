import ECDSAAdd.Arithmetic.Paper935.Arena
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBorrow
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFront
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceArithmeticPartsChunk2
import ECDSAAdd.Arithmetic.Paper935.HmrSourceCounterPartsChunk2
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryBankChunk2
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk2
import ECDSAAdd.Arithmetic.Paper935.HmrSourceExitBankChunk2
import ECDSAAdd.Arithmetic.Paper935.HmrSourceExitPartsChunk2
import ECDSAAdd.Arithmetic.Paper935.HmrSourceF4PartsChunk2
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFront
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomBankChunk2
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomPartsChunk2
import ECDSAAdd.Arithmetic.Paper935.RowWindowResize
import ECDSAAdd.Arithmetic.Paper935.WindowAllocator
import ECDSAAdd.Arithmetic.Paper935.WindowBank
import ECDSAAdd.Arithmetic.Paper935.HmrFrontComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitialChunk1

namespace ECDSAAdd.Arithmetic.Paper935
def s2Step32FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [779, 786], [], [791]],[[780], [781], [787], [785]],[[], [], [], []]⟩,[789],[839],[844],[845],[846, 847, 849, 851, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[846, 847, 849, 851, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880],[844, 845, 846, 847]⟩
def s2Step32FrontBank : WindowBank := ⟨s2Step32EntryFRow,s2Step32EntryGRow,s2Step32EntryFvRow,s2Step32EntryGvRow⟩
def s2Step32FrontPair : WindowBank := ⟨s2Step32EntryFOut,s2Step32EntryGOut,s2Step32EntryFvOut,s2Step32EntryGvOut⟩
def s2Step32FrontHead : WindowBank := ⟨s2Step32HeadFOut,s2Step32HeadGOut,s2Step32HeadFvOut,s2Step32HeadGvOut⟩
def s2Step32FrontOut : WindowBank := ⟨s2Step32ExitFOut,s2Step32ExitGOut,s2Step32ExitFvOut,s2Step32ExitGvOut⟩
def s2Step32FrontSigmaArena : Arena := ⟨s2Step32EntryGvAfter.live∪{789},Finset.union_subset s2Step32EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step32Front_sigma : s2Step32EntryGvAfter.checkBorrow 1 [789]=some s2Step32FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step32EntryGvAfter,arenaWires]
  · rfl
theorem s2Step32Front_branch : s2Step32FrontSigmaArena.checkBorrow 1 [839]=some s2Step32HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step32FrontSigmaArena,s2Step32EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step32FrontSigmaArena,s2Step32EntryGvAfter,s2Step32HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step32Front_entry : HmrFrontEntryValid s2Step32EntryFBefore s2Step32FrontBank 253 29 ⟨252,252,29,28⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step32FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step32EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step32EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step32FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step32FrontPlan : HmrSourceFront := ⟨s2Step32EntryGvAfter,s2Step32FrontPair,(growRow 768 s2Step32EntryFFresh ++ (growRow 769 s2Step32EntryGFresh ++ (growRow 770 s2Step32EntryFvFresh ++ (growRow 771 s2Step32EntryGvFresh ++ [])))),s2Step32FrontSigmaArena,[789],s2Step32HeadGBefore,[839],
  s2Step32HeadFvAfter,s2Step32FrontHead,(growRow 769 s2Step32HeadGFresh ++ (growRow 768 s2Step32HeadFFresh ++ (growRow 771 s2Step32HeadGvFresh ++ (growRow 770 s2Step32HeadFvFresh ++ [])))),s2Step32F4Plan,s2Step32CounterDuring,s2Step32CounterWork,s2Step32ExitGvAfter,s2Step32FrontOut,(shrinkRow 769 s2Step32ExitGExtra ++ (shrinkRow 768 s2Step32ExitFExtra ++ (shrinkRow 770 s2Step32ExitFvExtra ++ (shrinkRow 771 s2Step32ExitGvExtra ++ []))))⟩
theorem s2Step32Front_checked : compileHmrSourceFrontLog s2Step32EntryFBefore s2Step32FrontBank 253 29 ⟨252,252,29,28⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step32FrontLog=some s2Step32FrontPlan := by
  have pairEq : s2Step32FrontPair=⟨s2Step32HeadFRow,s2Step32HeadGRow,s2Step32HeadFvRow,s2Step32HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step32FrontHead=⟨s2Step32ExitFRow,s2Step32ExitGRow,s2Step32ExitFvRow,s2Step32ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step32Add0A=s2Step32FrontHead.f.wires := by decide +kernel
  have gEq : s2Step32Add0B=s2Step32FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step32Add1A=s2Step32FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step32Add1B=s2Step32FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step32EntryFBefore s2Step32FrontBank 253 29 ⟨252,252,29,28⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step32FrontLog s2Step32FrontPlan
  · exact s2Step32Front_entry
  · exact s2Step32EntryBank_checked
  · exact s2Step32Front_sigma
  · rfl
  · exact s2Step32Front_branch
  · rfl
  · simpa only [s2Step32FrontPlan,pairEq] using s2Step32HeadBank_checked
  · simpa only [s2Step32FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step32F4_checked
  · exact s2Step32Counter_checked
  · rfl
  · simpa only [s2Step32FrontPlan,headEq] using s2Step32ExitBank_checked
def s2Step33FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [839]],[[791], [787], [785], [781]],[[], [], [], []]⟩,[789],[788],[786],[780],[844, 845, 846, 847, 849, 851, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[844, 845, 846, 847, 849, 851, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878],[786, 780, 844, 845]⟩
def s2Step33FrontBank : WindowBank := ⟨s2Step33EntryFRow,s2Step33EntryGRow,s2Step33EntryFvRow,s2Step33EntryGvRow⟩
def s2Step33FrontPair : WindowBank := ⟨s2Step33EntryFOut,s2Step33EntryGOut,s2Step33EntryFvOut,s2Step33EntryGvOut⟩
def s2Step33FrontHead : WindowBank := ⟨s2Step33HeadFOut,s2Step33HeadGOut,s2Step33HeadFvOut,s2Step33HeadGvOut⟩
def s2Step33FrontOut : WindowBank := ⟨s2Step33ExitFOut,s2Step33ExitGOut,s2Step33ExitFvOut,s2Step33ExitGvOut⟩
def s2Step33FrontSigmaArena : Arena := ⟨s2Step33EntryGvAfter.live∪{789},Finset.union_subset s2Step33EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step33Front_sigma : s2Step33EntryGvAfter.checkBorrow 1 [789]=some s2Step33FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step33EntryGvAfter,arenaWires]
  · rfl
theorem s2Step33Front_branch : s2Step33FrontSigmaArena.checkBorrow 1 [788]=some s2Step33HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step33FrontSigmaArena,s2Step33EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step33FrontSigmaArena,s2Step33EntryGvAfter,s2Step33HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step33Front_entry : HmrFrontEntryValid s2Step33EntryFBefore s2Step33FrontBank 252 29 ⟨251,251,30,29⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step33FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step33EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step33EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step33FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step33FrontPlan : HmrSourceFront := ⟨s2Step33EntryGvAfter,s2Step33FrontPair,(growRow 768 s2Step33EntryFFresh ++ (growRow 769 s2Step33EntryGFresh ++ (growRow 770 s2Step33EntryFvFresh ++ (growRow 771 s2Step33EntryGvFresh ++ [])))),s2Step33FrontSigmaArena,[789],s2Step33HeadGBefore,[788],
  s2Step33HeadFvAfter,s2Step33FrontHead,(growRow 769 s2Step33HeadGFresh ++ (growRow 768 s2Step33HeadFFresh ++ (growRow 771 s2Step33HeadGvFresh ++ (growRow 770 s2Step33HeadFvFresh ++ [])))),s2Step33F4Plan,s2Step33CounterDuring,s2Step33CounterWork,s2Step33ExitGvAfter,s2Step33FrontOut,(shrinkRow 769 s2Step33ExitGExtra ++ (shrinkRow 768 s2Step33ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step33ExitGvExtra ++ []))))⟩
theorem s2Step33Front_checked : compileHmrSourceFrontLog s2Step33EntryFBefore s2Step33FrontBank 252 29 ⟨251,251,30,29⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step33FrontLog=some s2Step33FrontPlan := by
  have pairEq : s2Step33FrontPair=⟨s2Step33HeadFRow,s2Step33HeadGRow,s2Step33HeadFvRow,s2Step33HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step33FrontHead=⟨s2Step33ExitFRow,s2Step33ExitGRow,s2Step33ExitFvRow,s2Step33ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step33Add0A=s2Step33FrontHead.f.wires := by decide +kernel
  have gEq : s2Step33Add0B=s2Step33FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step33Add1A=s2Step33FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step33Add1B=s2Step33FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step33EntryFBefore s2Step33FrontBank 252 29 ⟨251,251,30,29⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step33FrontLog s2Step33FrontPlan
  · exact s2Step33Front_entry
  · exact s2Step33EntryBank_checked
  · exact s2Step33Front_sigma
  · rfl
  · exact s2Step33Front_branch
  · rfl
  · simpa only [s2Step33FrontPlan,pairEq] using s2Step33HeadBank_checked
  · simpa only [s2Step33FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step33F4_checked
  · exact s2Step33Counter_checked
  · rfl
  · simpa only [s2Step33FrontPlan,headEq] using s2Step33ExitBank_checked
def s2Step34FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [788]],[[785], [787], [779], [791]],[[], [], [], []]⟩,[789],[790],[786],[780],[844, 845, 846, 847, 849, 851, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[844, 845, 846, 847, 849, 851, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880],[786, 780, 844, 845]⟩
def s2Step34FrontBank : WindowBank := ⟨s2Step34EntryFRow,s2Step34EntryGRow,s2Step34EntryFvRow,s2Step34EntryGvRow⟩
def s2Step34FrontPair : WindowBank := ⟨s2Step34EntryFOut,s2Step34EntryGOut,s2Step34EntryFvOut,s2Step34EntryGvOut⟩
def s2Step34FrontHead : WindowBank := ⟨s2Step34HeadFOut,s2Step34HeadGOut,s2Step34HeadFvOut,s2Step34HeadGvOut⟩
def s2Step34FrontOut : WindowBank := ⟨s2Step34ExitFOut,s2Step34ExitGOut,s2Step34ExitFvOut,s2Step34ExitGvOut⟩
def s2Step34FrontSigmaArena : Arena := ⟨s2Step34EntryGvAfter.live∪{789},Finset.union_subset s2Step34EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step34Front_sigma : s2Step34EntryGvAfter.checkBorrow 1 [789]=some s2Step34FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step34EntryGvAfter,arenaWires]
  · rfl
theorem s2Step34Front_branch : s2Step34FrontSigmaArena.checkBorrow 1 [790]=some s2Step34HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step34FrontSigmaArena,s2Step34EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step34FrontSigmaArena,s2Step34EntryGvAfter,s2Step34HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step34Front_entry : HmrFrontEntryValid s2Step34EntryFBefore s2Step34FrontBank 251 30 ⟨251,250,30,30⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step34FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step34EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step34EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step34FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step34FrontPlan : HmrSourceFront := ⟨s2Step34EntryGvAfter,s2Step34FrontPair,(growRow 768 s2Step34EntryFFresh ++ (growRow 769 s2Step34EntryGFresh ++ (growRow 770 s2Step34EntryFvFresh ++ (growRow 771 s2Step34EntryGvFresh ++ [])))),s2Step34FrontSigmaArena,[789],s2Step34HeadGBefore,[790],
  s2Step34HeadFvAfter,s2Step34FrontHead,(growRow 769 s2Step34HeadGFresh ++ (growRow 768 s2Step34HeadFFresh ++ (growRow 771 s2Step34HeadGvFresh ++ (growRow 770 s2Step34HeadFvFresh ++ [])))),s2Step34F4Plan,s2Step34CounterDuring,s2Step34CounterWork,s2Step34ExitGvAfter,s2Step34FrontOut,(shrinkRow 769 s2Step34ExitGExtra ++ (shrinkRow 768 s2Step34ExitFExtra ++ (shrinkRow 770 s2Step34ExitFvExtra ++ (shrinkRow 771 s2Step34ExitGvExtra ++ []))))⟩
theorem s2Step34Front_checked : compileHmrSourceFrontLog s2Step34EntryFBefore s2Step34FrontBank 251 30 ⟨251,250,30,30⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step34FrontLog=some s2Step34FrontPlan := by
  have pairEq : s2Step34FrontPair=⟨s2Step34HeadFRow,s2Step34HeadGRow,s2Step34HeadFvRow,s2Step34HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step34FrontHead=⟨s2Step34ExitFRow,s2Step34ExitGRow,s2Step34ExitFvRow,s2Step34ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step34Add0A=s2Step34FrontHead.f.wires := by decide +kernel
  have gEq : s2Step34Add0B=s2Step34FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step34Add1A=s2Step34FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step34Add1B=s2Step34FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step34EntryFBefore s2Step34FrontBank 251 30 ⟨251,250,30,30⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step34FrontLog s2Step34FrontPlan
  · exact s2Step34Front_entry
  · exact s2Step34EntryBank_checked
  · exact s2Step34Front_sigma
  · rfl
  · exact s2Step34Front_branch
  · rfl
  · simpa only [s2Step34FrontPlan,pairEq] using s2Step34HeadBank_checked
  · simpa only [s2Step34FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step34F4_checked
  · exact s2Step34Counter_checked
  · rfl
  · simpa only [s2Step34FrontPlan,headEq] using s2Step34ExitBank_checked
def s2Step35FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [790], [], []],[[779], [791], [787], [785]],[[], [], [], []]⟩,[789],[793],[786],[780],[844, 845, 846, 847, 849, 851, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[844, 845, 846, 847, 849, 851, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880],[786, 780, 844, 845]⟩
def s2Step35FrontBank : WindowBank := ⟨s2Step35EntryFRow,s2Step35EntryGRow,s2Step35EntryFvRow,s2Step35EntryGvRow⟩
def s2Step35FrontPair : WindowBank := ⟨s2Step35EntryFOut,s2Step35EntryGOut,s2Step35EntryFvOut,s2Step35EntryGvOut⟩
def s2Step35FrontHead : WindowBank := ⟨s2Step35HeadFOut,s2Step35HeadGOut,s2Step35HeadFvOut,s2Step35HeadGvOut⟩
def s2Step35FrontOut : WindowBank := ⟨s2Step35ExitFOut,s2Step35ExitGOut,s2Step35ExitFvOut,s2Step35ExitGvOut⟩
def s2Step35FrontSigmaArena : Arena := ⟨s2Step35EntryGvAfter.live∪{789},Finset.union_subset s2Step35EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step35Front_sigma : s2Step35EntryGvAfter.checkBorrow 1 [789]=some s2Step35FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step35EntryGvAfter,s2Step35EntryGAfter,arenaWires]
  · rfl
theorem s2Step35Front_branch : s2Step35FrontSigmaArena.checkBorrow 1 [793]=some s2Step35HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step35FrontSigmaArena,s2Step35EntryGvAfter,s2Step35EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step35FrontSigmaArena,s2Step35EntryGvAfter,s2Step35EntryGAfter,s2Step35HeadGBefore,s2Step34HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step35Front_entry : HmrFrontEntryValid s2Step35EntryFBefore s2Step35FrontBank 251 30 ⟨250,251,31,30⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step35FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step35EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step35EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (792≤q ∧ q<793) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step35FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step35FrontPlan : HmrSourceFront := ⟨s2Step35EntryGvAfter,s2Step35FrontPair,(growRow 768 s2Step35EntryFFresh ++ (growRow 769 s2Step35EntryGFresh ++ (growRow 770 s2Step35EntryFvFresh ++ (growRow 771 s2Step35EntryGvFresh ++ [])))),s2Step35FrontSigmaArena,[789],s2Step35HeadGBefore,[793],
  s2Step35HeadFvAfter,s2Step35FrontHead,(growRow 769 s2Step35HeadGFresh ++ (growRow 768 s2Step35HeadFFresh ++ (growRow 771 s2Step35HeadGvFresh ++ (growRow 770 s2Step35HeadFvFresh ++ [])))),s2Step35F4Plan,s2Step35CounterDuring,s2Step35CounterWork,s2Step35ExitGvAfter,s2Step35FrontOut,(shrinkRow 769 s2Step35ExitGExtra ++ (shrinkRow 768 s2Step35ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step35ExitGvExtra ++ []))))⟩
theorem s2Step35Front_checked : compileHmrSourceFrontLog s2Step35EntryFBefore s2Step35FrontBank 251 30 ⟨250,251,31,30⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step35FrontLog=some s2Step35FrontPlan := by
  have pairEq : s2Step35FrontPair=⟨s2Step35HeadFRow,s2Step35HeadGRow,s2Step35HeadFvRow,s2Step35HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step35FrontHead=⟨s2Step35ExitFRow,s2Step35ExitGRow,s2Step35ExitFvRow,s2Step35ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step35Add0A=s2Step35FrontHead.f.wires := by decide +kernel
  have gEq : s2Step35Add0B=s2Step35FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step35Add1A=s2Step35FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step35Add1B=s2Step35FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step35EntryFBefore s2Step35FrontBank 251 30 ⟨250,251,31,30⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step35FrontLog s2Step35FrontPlan
  · exact s2Step35Front_entry
  · exact s2Step35EntryBank_checked
  · exact s2Step35Front_sigma
  · rfl
  · exact s2Step35Front_branch
  · rfl
  · simpa only [s2Step35FrontPlan,pairEq] using s2Step35HeadBank_checked
  · simpa only [s2Step35FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step35F4_checked
  · exact s2Step35Counter_checked
  · rfl
  · simpa only [s2Step35FrontPlan,headEq] using s2Step35ExitBank_checked
def s2Step36FrontLog : HmrFrontAllocationLog := ⟨⟨[[793], [], [], [789]],[[791], [779], [786], [780]],[[], [], [], []]⟩,[792],[787],[844],[845],[846, 847, 849, 851, 856, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[846, 847, 849, 851, 856, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884],[844, 845, 846, 847]⟩
def s2Step36FrontBank : WindowBank := ⟨s2Step36EntryFRow,s2Step36EntryGRow,s2Step36EntryFvRow,s2Step36EntryGvRow⟩
def s2Step36FrontPair : WindowBank := ⟨s2Step36EntryFOut,s2Step36EntryGOut,s2Step36EntryFvOut,s2Step36EntryGvOut⟩
def s2Step36FrontHead : WindowBank := ⟨s2Step36HeadFOut,s2Step36HeadGOut,s2Step36HeadFvOut,s2Step36HeadGvOut⟩
def s2Step36FrontOut : WindowBank := ⟨s2Step36ExitFOut,s2Step36ExitGOut,s2Step36ExitFvOut,s2Step36ExitGvOut⟩
def s2Step36FrontSigmaArena : Arena := ⟨s2Step36EntryGvAfter.live∪{792},Finset.union_subset s2Step36EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step36Front_sigma : s2Step36EntryGvAfter.checkBorrow 1 [792]=some s2Step36FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step36EntryGvAfter,arenaWires]
  · rfl
theorem s2Step36Front_branch : s2Step36FrontSigmaArena.checkBorrow 1 [787]=some s2Step36HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step36FrontSigmaArena,s2Step36EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step36FrontSigmaArena,s2Step36EntryGvAfter,s2Step36HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step36Front_entry : HmrFrontEntryValid s2Step36EntryFBefore s2Step36FrontBank 251 31 ⟨250,250,31,31⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step36FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step36EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step36EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step36FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step36FrontPlan : HmrSourceFront := ⟨s2Step36EntryGvAfter,s2Step36FrontPair,(growRow 768 s2Step36EntryFFresh ++ (growRow 769 s2Step36EntryGFresh ++ (growRow 770 s2Step36EntryFvFresh ++ (growRow 771 s2Step36EntryGvFresh ++ [])))),s2Step36FrontSigmaArena,[792],s2Step36HeadGBefore,[787],
  s2Step36HeadFvAfter,s2Step36FrontHead,(growRow 769 s2Step36HeadGFresh ++ (growRow 768 s2Step36HeadFFresh ++ (growRow 771 s2Step36HeadGvFresh ++ (growRow 770 s2Step36HeadFvFresh ++ [])))),s2Step36F4Plan,s2Step36CounterDuring,s2Step36CounterWork,s2Step36ExitGvAfter,s2Step36FrontOut,(shrinkRow 769 s2Step36ExitGExtra ++ (shrinkRow 768 s2Step36ExitFExtra ++ (shrinkRow 770 s2Step36ExitFvExtra ++ (shrinkRow 771 s2Step36ExitGvExtra ++ []))))⟩
theorem s2Step36Front_checked : compileHmrSourceFrontLog s2Step36EntryFBefore s2Step36FrontBank 251 31 ⟨250,250,31,31⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step36FrontLog=some s2Step36FrontPlan := by
  have pairEq : s2Step36FrontPair=⟨s2Step36HeadFRow,s2Step36HeadGRow,s2Step36HeadFvRow,s2Step36HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step36FrontHead=⟨s2Step36ExitFRow,s2Step36ExitGRow,s2Step36ExitFvRow,s2Step36ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step36Add0A=s2Step36FrontHead.f.wires := by decide +kernel
  have gEq : s2Step36Add0B=s2Step36FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step36Add1A=s2Step36FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step36Add1B=s2Step36FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step36EntryFBefore s2Step36FrontBank 251 31 ⟨250,250,31,31⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step36FrontLog s2Step36FrontPlan
  · exact s2Step36Front_entry
  · exact s2Step36EntryBank_checked
  · exact s2Step36Front_sigma
  · rfl
  · exact s2Step36Front_branch
  · rfl
  · simpa only [s2Step36FrontPlan,pairEq] using s2Step36HeadBank_checked
  · simpa only [s2Step36FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step36F4_checked
  · exact s2Step36Counter_checked
  · rfl
  · simpa only [s2Step36FrontPlan,headEq] using s2Step36ExitBank_checked
def s2Step37FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[786], [780], [793], [779]],[[], [], [], []]⟩,[787],[792],[790],[791],[844, 845, 846, 847, 849, 851, 856, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[844, 845, 846, 847, 849, 851, 856, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882],[790, 791, 844, 845]⟩
def s2Step37FrontBank : WindowBank := ⟨s2Step37EntryFRow,s2Step37EntryGRow,s2Step37EntryFvRow,s2Step37EntryGvRow⟩
def s2Step37FrontPair : WindowBank := ⟨s2Step37EntryFOut,s2Step37EntryGOut,s2Step37EntryFvOut,s2Step37EntryGvOut⟩
def s2Step37FrontHead : WindowBank := ⟨s2Step37HeadFOut,s2Step37HeadGOut,s2Step37HeadFvOut,s2Step37HeadGvOut⟩
def s2Step37FrontOut : WindowBank := ⟨s2Step37ExitFOut,s2Step37ExitGOut,s2Step37ExitFvOut,s2Step37ExitGvOut⟩
def s2Step37FrontSigmaArena : Arena := ⟨s2Step37EntryGvAfter.live∪{787},Finset.union_subset s2Step37EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step37Front_sigma : s2Step37EntryGvAfter.checkBorrow 1 [787]=some s2Step37FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step37EntryGvAfter,s2Step37EntryFBefore,arenaWires]
  · rfl
theorem s2Step37Front_branch : s2Step37FrontSigmaArena.checkBorrow 1 [792]=some s2Step37HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step37FrontSigmaArena,s2Step37EntryGvAfter,s2Step37EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step37FrontSigmaArena,s2Step37EntryGvAfter,s2Step37EntryFBefore,s2Step37HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step37Front_entry : HmrFrontEntryValid s2Step37EntryFBefore s2Step37FrontBank 250 31 ⟨250,249,32,32⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step37FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step37EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step37EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step37FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step37FrontPlan : HmrSourceFront := ⟨s2Step37EntryGvAfter,s2Step37FrontPair,(growRow 768 s2Step37EntryFFresh ++ (growRow 769 s2Step37EntryGFresh ++ (growRow 770 s2Step37EntryFvFresh ++ (growRow 771 s2Step37EntryGvFresh ++ [])))),s2Step37FrontSigmaArena,[787],s2Step37HeadGBefore,[792],
  s2Step37HeadFvAfter,s2Step37FrontHead,(growRow 769 s2Step37HeadGFresh ++ (growRow 768 s2Step37HeadFFresh ++ (growRow 771 s2Step37HeadGvFresh ++ (growRow 770 s2Step37HeadFvFresh ++ [])))),s2Step37F4Plan,s2Step37CounterDuring,s2Step37CounterWork,s2Step37ExitGvAfter,s2Step37FrontOut,(shrinkRow 769 s2Step37ExitGExtra ++ (shrinkRow 768 s2Step37ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))⟩
theorem s2Step37Front_checked : compileHmrSourceFrontLog s2Step37EntryFBefore s2Step37FrontBank 250 31 ⟨250,249,32,32⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step37FrontLog=some s2Step37FrontPlan := by
  have pairEq : s2Step37FrontPair=⟨s2Step37HeadFRow,s2Step37HeadGRow,s2Step37HeadFvRow,s2Step37HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step37FrontHead=⟨s2Step37ExitFRow,s2Step37ExitGRow,s2Step37ExitFvRow,s2Step37ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step37Add0A=s2Step37FrontHead.f.wires := by decide +kernel
  have gEq : s2Step37Add0B=s2Step37FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step37Add1A=s2Step37FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step37Add1B=s2Step37FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step37EntryFBefore s2Step37FrontBank 250 31 ⟨250,249,32,32⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step37FrontLog s2Step37FrontPlan
  · exact s2Step37Front_entry
  · exact s2Step37EntryBank_checked
  · exact s2Step37Front_sigma
  · rfl
  · exact s2Step37Front_branch
  · rfl
  · simpa only [s2Step37FrontPlan,pairEq] using s2Step37HeadBank_checked
  · simpa only [s2Step37FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step37F4_checked
  · exact s2Step37Counter_checked
  · rfl
  · simpa only [s2Step37FrontPlan,headEq] using s2Step37ExitBank_checked
def s2Step38FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [792], [], []],[[780], [786], [790], [791]],[[], [], [], []]⟩,[787],[796],[844],[845],[846, 847, 849, 851, 856, 858, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[846, 847, 849, 851, 856, 858, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886],[844, 845, 846, 847]⟩
def s2Step38FrontBank : WindowBank := ⟨s2Step38EntryFRow,s2Step38EntryGRow,s2Step38EntryFvRow,s2Step38EntryGvRow⟩
def s2Step38FrontPair : WindowBank := ⟨s2Step38EntryFOut,s2Step38EntryGOut,s2Step38EntryFvOut,s2Step38EntryGvOut⟩
def s2Step38FrontHead : WindowBank := ⟨s2Step38HeadFOut,s2Step38HeadGOut,s2Step38HeadFvOut,s2Step38HeadGvOut⟩
def s2Step38FrontOut : WindowBank := ⟨s2Step38ExitFOut,s2Step38ExitGOut,s2Step38ExitFvOut,s2Step38ExitGvOut⟩
def s2Step38FrontSigmaArena : Arena := ⟨s2Step38EntryGvAfter.live∪{787},Finset.union_subset s2Step38EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step38Front_sigma : s2Step38EntryGvAfter.checkBorrow 1 [787]=some s2Step38FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step38EntryGvAfter,s2Step38EntryGAfter,arenaWires]
  · rfl
theorem s2Step38Front_branch : s2Step38FrontSigmaArena.checkBorrow 1 [796]=some s2Step38HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step38FrontSigmaArena,s2Step38EntryGvAfter,s2Step38EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step38FrontSigmaArena,s2Step38EntryGvAfter,s2Step38EntryGAfter,s2Step38HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step38Front_entry : HmrFrontEntryValid s2Step38EntryFBefore s2Step38FrontBank 250 32 ⟨249,249,32,32⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step38FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step38EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step38EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (797≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step38FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step38FrontPlan : HmrSourceFront := ⟨s2Step38EntryGvAfter,s2Step38FrontPair,(growRow 768 s2Step38EntryFFresh ++ (growRow 769 s2Step38EntryGFresh ++ (growRow 770 s2Step38EntryFvFresh ++ (growRow 771 s2Step38EntryGvFresh ++ [])))),s2Step38FrontSigmaArena,[787],s2Step38HeadGBefore,[796],
  s2Step38HeadFvAfter,s2Step38FrontHead,(growRow 769 s2Step38HeadGFresh ++ (growRow 768 s2Step38HeadFFresh ++ (growRow 771 s2Step38HeadGvFresh ++ (growRow 770 s2Step38HeadFvFresh ++ [])))),s2Step38F4Plan,s2Step38CounterDuring,s2Step38CounterWork,s2Step38ExitGvAfter,s2Step38FrontOut,(shrinkRow 769 s2Step38ExitGExtra ++ (shrinkRow 768 s2Step38ExitFExtra ++ (shrinkRow 770 s2Step38ExitFvExtra ++ (shrinkRow 771 s2Step38ExitGvExtra ++ []))))⟩
theorem s2Step38Front_checked : compileHmrSourceFrontLog s2Step38EntryFBefore s2Step38FrontBank 250 32 ⟨249,249,32,32⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step38FrontLog=some s2Step38FrontPlan := by
  have pairEq : s2Step38FrontPair=⟨s2Step38HeadFRow,s2Step38HeadGRow,s2Step38HeadFvRow,s2Step38HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step38FrontHead=⟨s2Step38ExitFRow,s2Step38ExitGRow,s2Step38ExitFvRow,s2Step38ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step38Add0A=s2Step38FrontHead.f.wires := by decide +kernel
  have gEq : s2Step38Add0B=s2Step38FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step38Add1A=s2Step38FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step38Add1B=s2Step38FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step38EntryFBefore s2Step38FrontBank 250 32 ⟨249,249,32,32⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step38FrontLog s2Step38FrontPlan
  · exact s2Step38Front_entry
  · exact s2Step38EntryBank_checked
  · exact s2Step38Front_sigma
  · rfl
  · exact s2Step38Front_branch
  · rfl
  · simpa only [s2Step38FrontPlan,pairEq] using s2Step38HeadBank_checked
  · simpa only [s2Step38FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step38F4_checked
  · exact s2Step38Counter_checked
  · rfl
  · simpa only [s2Step38FrontPlan,headEq] using s2Step38ExitBank_checked
def s2Step39FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[794], [790], [791], [786]],[[], [], [], []]⟩,[796],[787],[792],[780],[844, 845, 846, 847, 849, 851, 856, 858, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[844, 845, 846, 847, 849, 851, 856, 858, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884],[792, 780, 844, 845]⟩
def s2Step39FrontBank : WindowBank := ⟨s2Step39EntryFRow,s2Step39EntryGRow,s2Step39EntryFvRow,s2Step39EntryGvRow⟩
def s2Step39FrontPair : WindowBank := ⟨s2Step39EntryFOut,s2Step39EntryGOut,s2Step39EntryFvOut,s2Step39EntryGvOut⟩
def s2Step39FrontHead : WindowBank := ⟨s2Step39HeadFOut,s2Step39HeadGOut,s2Step39HeadFvOut,s2Step39HeadGvOut⟩
def s2Step39FrontOut : WindowBank := ⟨s2Step39ExitFOut,s2Step39ExitGOut,s2Step39ExitFvOut,s2Step39ExitGvOut⟩
def s2Step39FrontSigmaArena : Arena := ⟨s2Step39EntryGvAfter.live∪{796},Finset.union_subset s2Step39EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step39Front_sigma : s2Step39EntryGvAfter.checkBorrow 1 [796]=some s2Step39FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step39EntryGvAfter,s2Step39EntryFBefore,arenaWires]
  · rfl
theorem s2Step39Front_branch : s2Step39FrontSigmaArena.checkBorrow 1 [787]=some s2Step39HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step39FrontSigmaArena,s2Step39EntryGvAfter,s2Step39EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step39FrontSigmaArena,s2Step39EntryGvAfter,s2Step39EntryFBefore,s2Step39HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step39Front_entry : HmrFrontEntryValid s2Step39EntryFBefore s2Step39FrontBank 249 32 ⟨249,248,33,32⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step39FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step39EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step39EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (797≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step39FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step39FrontPlan : HmrSourceFront := ⟨s2Step39EntryGvAfter,s2Step39FrontPair,(growRow 768 s2Step39EntryFFresh ++ (growRow 769 s2Step39EntryGFresh ++ (growRow 770 s2Step39EntryFvFresh ++ (growRow 771 s2Step39EntryGvFresh ++ [])))),s2Step39FrontSigmaArena,[796],s2Step39HeadGBefore,[787],
  s2Step39HeadFvAfter,s2Step39FrontHead,(growRow 769 s2Step39HeadGFresh ++ (growRow 768 s2Step39HeadFFresh ++ (growRow 771 s2Step39HeadGvFresh ++ (growRow 770 s2Step39HeadFvFresh ++ [])))),s2Step39F4Plan,s2Step39CounterDuring,s2Step39CounterWork,s2Step39ExitGvAfter,s2Step39FrontOut,(shrinkRow 769 s2Step39ExitGExtra ++ (shrinkRow 768 s2Step39ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step39ExitGvExtra ++ []))))⟩
theorem s2Step39Front_checked : compileHmrSourceFrontLog s2Step39EntryFBefore s2Step39FrontBank 249 32 ⟨249,248,33,32⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step39FrontLog=some s2Step39FrontPlan := by
  have pairEq : s2Step39FrontPair=⟨s2Step39HeadFRow,s2Step39HeadGRow,s2Step39HeadFvRow,s2Step39HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step39FrontHead=⟨s2Step39ExitFRow,s2Step39ExitGRow,s2Step39ExitFvRow,s2Step39ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step39Add0A=s2Step39FrontHead.f.wires := by decide +kernel
  have gEq : s2Step39Add0B=s2Step39FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step39Add1A=s2Step39FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step39Add1B=s2Step39FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step39EntryFBefore s2Step39FrontBank 249 32 ⟨249,248,33,32⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step39FrontLog s2Step39FrontPlan
  · exact s2Step39Front_entry
  · exact s2Step39EntryBank_checked
  · exact s2Step39Front_sigma
  · rfl
  · exact s2Step39Front_branch
  · rfl
  · simpa only [s2Step39FrontPlan,pairEq] using s2Step39HeadBank_checked
  · simpa only [s2Step39FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step39F4_checked
  · exact s2Step39Counter_checked
  · rfl
  · simpa only [s2Step39FrontPlan,headEq] using s2Step39ExitBank_checked
def s2Step40FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [787], [], [796]],[[790], [794], [792], [780]],[[], [], [], []]⟩,[798],[791],[844],[845],[846, 847, 849, 851, 856, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[846, 847, 849, 851, 856, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888],[844, 845, 846, 847]⟩
def s2Step40FrontBank : WindowBank := ⟨s2Step40EntryFRow,s2Step40EntryGRow,s2Step40EntryFvRow,s2Step40EntryGvRow⟩
def s2Step40FrontPair : WindowBank := ⟨s2Step40EntryFOut,s2Step40EntryGOut,s2Step40EntryFvOut,s2Step40EntryGvOut⟩
def s2Step40FrontHead : WindowBank := ⟨s2Step40HeadFOut,s2Step40HeadGOut,s2Step40HeadFvOut,s2Step40HeadGvOut⟩
def s2Step40FrontOut : WindowBank := ⟨s2Step40ExitFOut,s2Step40ExitGOut,s2Step40ExitFvOut,s2Step40ExitGvOut⟩
def s2Step40FrontSigmaArena : Arena := ⟨s2Step40EntryGvAfter.live∪{798},Finset.union_subset s2Step40EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step40Front_sigma : s2Step40EntryGvAfter.checkBorrow 1 [798]=some s2Step40FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step40EntryGvAfter,arenaWires]
  · rfl
theorem s2Step40Front_branch : s2Step40FrontSigmaArena.checkBorrow 1 [791]=some s2Step40HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step40FrontSigmaArena,s2Step40EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step40FrontSigmaArena,s2Step40EntryGvAfter,s2Step40HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step40Front_entry : HmrFrontEntryValid s2Step40EntryFBefore s2Step40FrontBank 249 33 ⟨248,248,34,33⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step40FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step40EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step40EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step40FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step40FrontPlan : HmrSourceFront := ⟨s2Step40EntryGvAfter,s2Step40FrontPair,(growRow 768 s2Step40EntryFFresh ++ (growRow 769 s2Step40EntryGFresh ++ (growRow 770 s2Step40EntryFvFresh ++ (growRow 771 s2Step40EntryGvFresh ++ [])))),s2Step40FrontSigmaArena,[798],s2Step40HeadGBefore,[791],
  s2Step40HeadFvAfter,s2Step40FrontHead,(growRow 769 s2Step40HeadGFresh ++ (growRow 768 s2Step40HeadFFresh ++ (growRow 771 s2Step40HeadGvFresh ++ (growRow 770 s2Step40HeadFvFresh ++ [])))),s2Step40F4Plan,s2Step40CounterDuring,s2Step40CounterWork,s2Step40ExitGvAfter,s2Step40FrontOut,(shrinkRow 769 s2Step40ExitGExtra ++ (shrinkRow 768 s2Step40ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step40ExitGvExtra ++ []))))⟩
theorem s2Step40Front_checked : compileHmrSourceFrontLog s2Step40EntryFBefore s2Step40FrontBank 249 33 ⟨248,248,34,33⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step40FrontLog=some s2Step40FrontPlan := by
  have pairEq : s2Step40FrontPair=⟨s2Step40HeadFRow,s2Step40HeadGRow,s2Step40HeadFvRow,s2Step40HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step40FrontHead=⟨s2Step40ExitFRow,s2Step40ExitGRow,s2Step40ExitFvRow,s2Step40ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step40Add0A=s2Step40FrontHead.f.wires := by decide +kernel
  have gEq : s2Step40Add0B=s2Step40FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step40Add1A=s2Step40FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step40Add1B=s2Step40FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step40EntryFBefore s2Step40FrontBank 249 33 ⟨248,248,34,33⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step40FrontLog s2Step40FrontPlan
  · exact s2Step40Front_entry
  · exact s2Step40EntryBank_checked
  · exact s2Step40Front_sigma
  · rfl
  · exact s2Step40Front_branch
  · rfl
  · simpa only [s2Step40FrontPlan,pairEq] using s2Step40HeadBank_checked
  · simpa only [s2Step40FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step40F4_checked
  · exact s2Step40Counter_checked
  · rfl
  · simpa only [s2Step40FrontPlan,headEq] using s2Step40ExitBank_checked
def s2Step41FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [791]],[[792], [794], [787], [790]],[[], [], [], []]⟩,[798],[797],[844],[845],[846, 847, 849, 851, 856, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[846, 847, 849, 851, 856, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889],[844, 845, 846, 847]⟩
def s2Step41FrontBank : WindowBank := ⟨s2Step41EntryFRow,s2Step41EntryGRow,s2Step41EntryFvRow,s2Step41EntryGvRow⟩
def s2Step41FrontPair : WindowBank := ⟨s2Step41EntryFOut,s2Step41EntryGOut,s2Step41EntryFvOut,s2Step41EntryGvOut⟩
def s2Step41FrontHead : WindowBank := ⟨s2Step41HeadFOut,s2Step41HeadGOut,s2Step41HeadFvOut,s2Step41HeadGvOut⟩
def s2Step41FrontOut : WindowBank := ⟨s2Step41ExitFOut,s2Step41ExitGOut,s2Step41ExitFvOut,s2Step41ExitGvOut⟩
def s2Step41FrontSigmaArena : Arena := ⟨s2Step41EntryGvAfter.live∪{798},Finset.union_subset s2Step41EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step41Front_sigma : s2Step41EntryGvAfter.checkBorrow 1 [798]=some s2Step41FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step41EntryGvAfter,arenaWires]
  · rfl
theorem s2Step41Front_branch : s2Step41FrontSigmaArena.checkBorrow 1 [797]=some s2Step41HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step41FrontSigmaArena,s2Step41EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step41FrontSigmaArena,s2Step41EntryGvAfter,s2Step41HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step41Front_entry : HmrFrontEntryValid s2Step41EntryFBefore s2Step41FrontBank 248 34 ⟨248,248,34,33⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step41FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step41EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step41EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step41FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step41FrontPlan : HmrSourceFront := ⟨s2Step41EntryGvAfter,s2Step41FrontPair,(growRow 768 s2Step41EntryFFresh ++ (growRow 769 s2Step41EntryGFresh ++ (growRow 770 s2Step41EntryFvFresh ++ (growRow 771 s2Step41EntryGvFresh ++ [])))),s2Step41FrontSigmaArena,[798],s2Step41HeadGBefore,[797],
  s2Step41HeadFvAfter,s2Step41FrontHead,(growRow 769 s2Step41HeadGFresh ++ (growRow 768 s2Step41HeadFFresh ++ (growRow 771 s2Step41HeadGvFresh ++ (growRow 770 s2Step41HeadFvFresh ++ [])))),s2Step41F4Plan,s2Step41CounterDuring,s2Step41CounterWork,s2Step41ExitGvAfter,s2Step41FrontOut,(shrinkRow 769 s2Step41ExitGExtra ++ (shrinkRow 768 s2Step41ExitFExtra ++ (shrinkRow 770 s2Step41ExitFvExtra ++ (shrinkRow 771 s2Step41ExitGvExtra ++ []))))⟩
theorem s2Step41Front_checked : compileHmrSourceFrontLog s2Step41EntryFBefore s2Step41FrontBank 248 34 ⟨248,248,34,33⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step41FrontLog=some s2Step41FrontPlan := by
  have pairEq : s2Step41FrontPair=⟨s2Step41HeadFRow,s2Step41HeadGRow,s2Step41HeadFvRow,s2Step41HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step41FrontHead=⟨s2Step41ExitFRow,s2Step41ExitGRow,s2Step41ExitFvRow,s2Step41ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step41Add0A=s2Step41FrontHead.f.wires := by decide +kernel
  have gEq : s2Step41Add0B=s2Step41FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step41Add1A=s2Step41FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step41Add1B=s2Step41FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step41EntryFBefore s2Step41FrontBank 248 34 ⟨248,248,34,33⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step41FrontLog s2Step41FrontPlan
  · exact s2Step41Front_entry
  · exact s2Step41EntryBank_checked
  · exact s2Step41Front_sigma
  · rfl
  · exact s2Step41Front_branch
  · rfl
  · simpa only [s2Step41FrontPlan,pairEq] using s2Step41HeadBank_checked
  · simpa only [s2Step41FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step41F4_checked
  · exact s2Step41Counter_checked
  · rfl
  · simpa only [s2Step41FrontPlan,headEq] using s2Step41ExitBank_checked
def s2Step42FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [797]],[[787], [790], [794], [792]],[[], [], [], []]⟩,[798],[791],[844],[845],[846, 847, 849, 851, 856, 860, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[846, 847, 849, 851, 856, 860, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890],[844, 845, 846, 847]⟩
def s2Step42FrontBank : WindowBank := ⟨s2Step42EntryFRow,s2Step42EntryGRow,s2Step42EntryFvRow,s2Step42EntryGvRow⟩
def s2Step42FrontPair : WindowBank := ⟨s2Step42EntryFOut,s2Step42EntryGOut,s2Step42EntryFvOut,s2Step42EntryGvOut⟩
def s2Step42FrontHead : WindowBank := ⟨s2Step42HeadFOut,s2Step42HeadGOut,s2Step42HeadFvOut,s2Step42HeadGvOut⟩
def s2Step42FrontOut : WindowBank := ⟨s2Step42ExitFOut,s2Step42ExitGOut,s2Step42ExitFvOut,s2Step42ExitGvOut⟩
def s2Step42FrontSigmaArena : Arena := ⟨s2Step42EntryGvAfter.live∪{798},Finset.union_subset s2Step42EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step42Front_sigma : s2Step42EntryGvAfter.checkBorrow 1 [798]=some s2Step42FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step42EntryGvAfter,arenaWires]
  · rfl
theorem s2Step42Front_branch : s2Step42FrontSigmaArena.checkBorrow 1 [791]=some s2Step42HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step42FrontSigmaArena,s2Step42EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step42FrontSigmaArena,s2Step42EntryGvAfter,s2Step42HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step42Front_entry : HmrFrontEntryValid s2Step42EntryFBefore s2Step42FrontBank 248 34 ⟨247,247,34,35⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step42FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step42EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step42EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step42FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step42FrontPlan : HmrSourceFront := ⟨s2Step42EntryGvAfter,s2Step42FrontPair,(growRow 768 s2Step42EntryFFresh ++ (growRow 769 s2Step42EntryGFresh ++ (growRow 770 s2Step42EntryFvFresh ++ (growRow 771 s2Step42EntryGvFresh ++ [])))),s2Step42FrontSigmaArena,[798],s2Step42HeadGBefore,[791],
  s2Step42HeadFvAfter,s2Step42FrontHead,(growRow 769 s2Step42HeadGFresh ++ (growRow 768 s2Step42HeadFFresh ++ (growRow 771 s2Step42HeadGvFresh ++ (growRow 770 s2Step42HeadFvFresh ++ [])))),s2Step42F4Plan,s2Step42CounterDuring,s2Step42CounterWork,s2Step42ExitGvAfter,s2Step42FrontOut,(shrinkRow 769 s2Step42ExitGExtra ++ (shrinkRow 768 s2Step42ExitFExtra ++ (shrinkRow 770 s2Step42ExitFvExtra ++ (growRow 771 [] ++ []))))⟩
theorem s2Step42Front_checked : compileHmrSourceFrontLog s2Step42EntryFBefore s2Step42FrontBank 248 34 ⟨247,247,34,35⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step42FrontLog=some s2Step42FrontPlan := by
  have pairEq : s2Step42FrontPair=⟨s2Step42HeadFRow,s2Step42HeadGRow,s2Step42HeadFvRow,s2Step42HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step42FrontHead=⟨s2Step42ExitFRow,s2Step42ExitGRow,s2Step42ExitFvRow,s2Step42ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step42Add0A=s2Step42FrontHead.f.wires := by decide +kernel
  have gEq : s2Step42Add0B=s2Step42FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step42Add1A=s2Step42FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step42Add1B=s2Step42FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step42EntryFBefore s2Step42FrontBank 248 34 ⟨247,247,34,35⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step42FrontLog s2Step42FrontPlan
  · exact s2Step42Front_entry
  · exact s2Step42EntryBank_checked
  · exact s2Step42Front_sigma
  · rfl
  · exact s2Step42Front_branch
  · rfl
  · simpa only [s2Step42FrontPlan,pairEq] using s2Step42HeadBank_checked
  · simpa only [s2Step42FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step42F4_checked
  · exact s2Step42Counter_checked
  · rfl
  · simpa only [s2Step42FrontPlan,headEq] using s2Step42ExitBank_checked
def s2Step43FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [791], []],[[800], [792], [790], [787]],[[], [], [], []]⟩,[798],[799],[844],[845],[846, 847, 849, 851, 856, 860, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[846, 847, 849, 851, 856, 860, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891],[844, 845, 846, 847]⟩
def s2Step43FrontBank : WindowBank := ⟨s2Step43EntryFRow,s2Step43EntryGRow,s2Step43EntryFvRow,s2Step43EntryGvRow⟩
def s2Step43FrontPair : WindowBank := ⟨s2Step43EntryFOut,s2Step43EntryGOut,s2Step43EntryFvOut,s2Step43EntryGvOut⟩
def s2Step43FrontHead : WindowBank := ⟨s2Step43HeadFOut,s2Step43HeadGOut,s2Step43HeadFvOut,s2Step43HeadGvOut⟩
def s2Step43FrontOut : WindowBank := ⟨s2Step43ExitFOut,s2Step43ExitGOut,s2Step43ExitFvOut,s2Step43ExitGvOut⟩
def s2Step43FrontSigmaArena : Arena := ⟨s2Step43EntryGvAfter.live∪{798},Finset.union_subset s2Step43EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step43Front_sigma : s2Step43EntryGvAfter.checkBorrow 1 [798]=some s2Step43FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step43EntryGvAfter,s2Step43EntryFvAfter,arenaWires]
  · rfl
theorem s2Step43Front_branch : s2Step43FrontSigmaArena.checkBorrow 1 [799]=some s2Step43HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step43FrontSigmaArena,s2Step43EntryGvAfter,s2Step43EntryFvAfter,arenaWires]
  · ext q
    simp only [s2Step43FrontSigmaArena,s2Step43EntryGvAfter,s2Step43EntryFvAfter,s2Step43HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step43Front_entry : HmrFrontEntryValid s2Step43EntryFBefore s2Step43FrontBank 247 35 ⟨246,246,34,35⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step43FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step43EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step43EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step43FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step43FrontPlan : HmrSourceFront := ⟨s2Step43EntryGvAfter,s2Step43FrontPair,(growRow 768 s2Step43EntryFFresh ++ (growRow 769 s2Step43EntryGFresh ++ (growRow 770 s2Step43EntryFvFresh ++ (growRow 771 s2Step43EntryGvFresh ++ [])))),s2Step43FrontSigmaArena,[798],s2Step43HeadGBefore,[799],
  s2Step43HeadFvAfter,s2Step43FrontHead,(growRow 769 s2Step43HeadGFresh ++ (growRow 768 s2Step43HeadFFresh ++ (growRow 771 s2Step43HeadGvFresh ++ (growRow 770 s2Step43HeadFvFresh ++ [])))),s2Step43F4Plan,s2Step43CounterDuring,s2Step43CounterWork,s2Step43ExitGvAfter,s2Step43FrontOut,(shrinkRow 769 s2Step43ExitGExtra ++ (shrinkRow 768 s2Step43ExitFExtra ++ (shrinkRow 770 s2Step43ExitFvExtra ++ (shrinkRow 771 s2Step43ExitGvExtra ++ []))))⟩
theorem s2Step43Front_checked : compileHmrSourceFrontLog s2Step43EntryFBefore s2Step43FrontBank 247 35 ⟨246,246,34,35⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step43FrontLog=some s2Step43FrontPlan := by
  have pairEq : s2Step43FrontPair=⟨s2Step43HeadFRow,s2Step43HeadGRow,s2Step43HeadFvRow,s2Step43HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step43FrontHead=⟨s2Step43ExitFRow,s2Step43ExitGRow,s2Step43ExitFvRow,s2Step43ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step43Add0A=s2Step43FrontHead.f.wires := by decide +kernel
  have gEq : s2Step43Add0B=s2Step43FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step43Add1A=s2Step43FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step43Add1B=s2Step43FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step43EntryFBefore s2Step43FrontBank 247 35 ⟨246,246,34,35⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step43FrontLog s2Step43FrontPlan
  · exact s2Step43Front_entry
  · exact s2Step43EntryBank_checked
  · exact s2Step43Front_sigma
  · rfl
  · exact s2Step43Front_branch
  · rfl
  · simpa only [s2Step43FrontPlan,pairEq] using s2Step43HeadBank_checked
  · simpa only [s2Step43FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step43F4_checked
  · exact s2Step43Counter_checked
  · rfl
  · simpa only [s2Step43FrontPlan,headEq] using s2Step43ExitBank_checked
def s2Step44FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [799], []],[[802], [790], [791], [787]],[[], [], [], []]⟩,[798],[801],[792],[800],[844, 845, 846, 847, 849, 851, 860, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[844, 845, 846, 847, 849, 851, 860, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890],[792, 800, 844, 845]⟩
def s2Step44FrontBank : WindowBank := ⟨s2Step44EntryFRow,s2Step44EntryGRow,s2Step44EntryFvRow,s2Step44EntryGvRow⟩
def s2Step44FrontPair : WindowBank := ⟨s2Step44EntryFOut,s2Step44EntryGOut,s2Step44EntryFvOut,s2Step44EntryGvOut⟩
def s2Step44FrontHead : WindowBank := ⟨s2Step44HeadFOut,s2Step44HeadGOut,s2Step44HeadFvOut,s2Step44HeadGvOut⟩
def s2Step44FrontOut : WindowBank := ⟨s2Step44ExitFOut,s2Step44ExitGOut,s2Step44ExitFvOut,s2Step44ExitGvOut⟩
def s2Step44FrontSigmaArena : Arena := ⟨s2Step44EntryGvAfter.live∪{798},Finset.union_subset s2Step44EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step44Front_sigma : s2Step44EntryGvAfter.checkBorrow 1 [798]=some s2Step44FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step44EntryGvAfter,s2Step44EntryFvAfter,arenaWires]
  · rfl
theorem s2Step44Front_branch : s2Step44FrontSigmaArena.checkBorrow 1 [801]=some s2Step44HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step44FrontSigmaArena,s2Step44EntryGvAfter,s2Step44EntryFvAfter,arenaWires]
  · ext q
    simp only [s2Step44FrontSigmaArena,s2Step44EntryGvAfter,s2Step44EntryFvAfter,s2Step44HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step44Front_entry : HmrFrontEntryValid s2Step44EntryFBefore s2Step44FrontBank 246 35 ⟨246,245,35,35⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step44FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step44EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step44EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (803≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step44FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step44FrontPlan : HmrSourceFront := ⟨s2Step44EntryGvAfter,s2Step44FrontPair,(growRow 768 s2Step44EntryFFresh ++ (growRow 769 s2Step44EntryGFresh ++ (growRow 770 s2Step44EntryFvFresh ++ (growRow 771 s2Step44EntryGvFresh ++ [])))),s2Step44FrontSigmaArena,[798],s2Step44HeadGBefore,[801],
  s2Step44HeadFvAfter,s2Step44FrontHead,(growRow 769 s2Step44HeadGFresh ++ (growRow 768 s2Step44HeadFFresh ++ (growRow 771 s2Step44HeadGvFresh ++ (growRow 770 s2Step44HeadFvFresh ++ [])))),s2Step44F4Plan,s2Step44CounterDuring,s2Step44CounterWork,s2Step44ExitGvAfter,s2Step44FrontOut,(shrinkRow 769 s2Step44ExitGExtra ++ (shrinkRow 768 s2Step44ExitFExtra ++ (shrinkRow 770 s2Step44ExitFvExtra ++ (shrinkRow 771 s2Step44ExitGvExtra ++ []))))⟩
theorem s2Step44Front_checked : compileHmrSourceFrontLog s2Step44EntryFBefore s2Step44FrontBank 246 35 ⟨246,245,35,35⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step44FrontLog=some s2Step44FrontPlan := by
  have pairEq : s2Step44FrontPair=⟨s2Step44HeadFRow,s2Step44HeadGRow,s2Step44HeadFvRow,s2Step44HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step44FrontHead=⟨s2Step44ExitFRow,s2Step44ExitGRow,s2Step44ExitFvRow,s2Step44ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step44Add0A=s2Step44FrontHead.f.wires := by decide +kernel
  have gEq : s2Step44Add0B=s2Step44FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step44Add1A=s2Step44FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step44Add1B=s2Step44FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step44EntryFBefore s2Step44FrontBank 246 35 ⟨246,245,35,35⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step44FrontLog s2Step44FrontPlan
  · exact s2Step44Front_entry
  · exact s2Step44EntryBank_checked
  · exact s2Step44Front_sigma
  · rfl
  · exact s2Step44Front_branch
  · rfl
  · simpa only [s2Step44FrontPlan,pairEq] using s2Step44HeadBank_checked
  · simpa only [s2Step44FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step44F4_checked
  · exact s2Step44Counter_checked
  · rfl
  · simpa only [s2Step44FrontPlan,headEq] using s2Step44ExitBank_checked
def s2Step45FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [801], [], []],[[791], [787], [790], [802]],[[], [], [], []]⟩,[798],[804],[792],[800],[844, 845, 846, 847, 849, 851, 860, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[844, 845, 846, 847, 849, 851, 860, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890],[792, 800, 844, 845]⟩
def s2Step45FrontBank : WindowBank := ⟨s2Step45EntryFRow,s2Step45EntryGRow,s2Step45EntryFvRow,s2Step45EntryGvRow⟩
def s2Step45FrontPair : WindowBank := ⟨s2Step45EntryFOut,s2Step45EntryGOut,s2Step45EntryFvOut,s2Step45EntryGvOut⟩
def s2Step45FrontHead : WindowBank := ⟨s2Step45HeadFOut,s2Step45HeadGOut,s2Step45HeadFvOut,s2Step45HeadGvOut⟩
def s2Step45FrontOut : WindowBank := ⟨s2Step45ExitFOut,s2Step45ExitGOut,s2Step45ExitFvOut,s2Step45ExitGvOut⟩
def s2Step45FrontSigmaArena : Arena := ⟨s2Step45EntryGvAfter.live∪{798},Finset.union_subset s2Step45EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step45Front_sigma : s2Step45EntryGvAfter.checkBorrow 1 [798]=some s2Step45FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step45EntryGvAfter,s2Step45EntryGAfter,arenaWires]
  · rfl
theorem s2Step45Front_branch : s2Step45FrontSigmaArena.checkBorrow 1 [804]=some s2Step45HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step45FrontSigmaArena,s2Step45EntryGvAfter,s2Step45EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step45FrontSigmaArena,s2Step45EntryGvAfter,s2Step45EntryGAfter,s2Step45HeadGBefore,s2Step44HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step45Front_entry : HmrFrontEntryValid s2Step45EntryFBefore s2Step45FrontBank 246 35 ⟨245,245,36,35⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step45FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step45EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step45EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step45FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step45FrontPlan : HmrSourceFront := ⟨s2Step45EntryGvAfter,s2Step45FrontPair,(growRow 768 s2Step45EntryFFresh ++ (growRow 769 s2Step45EntryGFresh ++ (growRow 770 s2Step45EntryFvFresh ++ (growRow 771 s2Step45EntryGvFresh ++ [])))),s2Step45FrontSigmaArena,[798],s2Step45HeadGBefore,[804],
  s2Step45HeadFvAfter,s2Step45FrontHead,(growRow 769 s2Step45HeadGFresh ++ (growRow 768 s2Step45HeadFFresh ++ (growRow 771 s2Step45HeadGvFresh ++ (growRow 770 s2Step45HeadFvFresh ++ [])))),s2Step45F4Plan,s2Step45CounterDuring,s2Step45CounterWork,s2Step45ExitGvAfter,s2Step45FrontOut,(shrinkRow 769 s2Step45ExitGExtra ++ (shrinkRow 768 s2Step45ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step45ExitGvExtra ++ []))))⟩
theorem s2Step45Front_checked : compileHmrSourceFrontLog s2Step45EntryFBefore s2Step45FrontBank 246 35 ⟨245,245,36,35⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step45FrontLog=some s2Step45FrontPlan := by
  have pairEq : s2Step45FrontPair=⟨s2Step45HeadFRow,s2Step45HeadGRow,s2Step45HeadFvRow,s2Step45HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step45FrontHead=⟨s2Step45ExitFRow,s2Step45ExitGRow,s2Step45ExitFvRow,s2Step45ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step45Add0A=s2Step45FrontHead.f.wires := by decide +kernel
  have gEq : s2Step45Add0B=s2Step45FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step45Add1A=s2Step45FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step45Add1B=s2Step45FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step45EntryFBefore s2Step45FrontBank 246 35 ⟨245,245,36,35⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step45FrontLog s2Step45FrontPlan
  · exact s2Step45Front_entry
  · exact s2Step45EntryBank_checked
  · exact s2Step45Front_sigma
  · rfl
  · exact s2Step45Front_branch
  · rfl
  · simpa only [s2Step45FrontPlan,pairEq] using s2Step45HeadBank_checked
  · simpa only [s2Step45FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step45F4_checked
  · exact s2Step45Counter_checked
  · rfl
  · simpa only [s2Step45FrontPlan,headEq] using s2Step45ExitBank_checked
def s2Step46FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [804]],[[790], [787], [801], [791]],[[], [], [], []]⟩,[798],[803],[792],[800],[844, 845, 846, 847, 849, 851, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[844, 845, 846, 847, 849, 851, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892],[792, 800, 844, 845]⟩
def s2Step46FrontBank : WindowBank := ⟨s2Step46EntryFRow,s2Step46EntryGRow,s2Step46EntryFvRow,s2Step46EntryGvRow⟩
def s2Step46FrontPair : WindowBank := ⟨s2Step46EntryFOut,s2Step46EntryGOut,s2Step46EntryFvOut,s2Step46EntryGvOut⟩
def s2Step46FrontHead : WindowBank := ⟨s2Step46HeadFOut,s2Step46HeadGOut,s2Step46HeadFvOut,s2Step46HeadGvOut⟩
def s2Step46FrontOut : WindowBank := ⟨s2Step46ExitFOut,s2Step46ExitGOut,s2Step46ExitFvOut,s2Step46ExitGvOut⟩
def s2Step46FrontSigmaArena : Arena := ⟨s2Step46EntryGvAfter.live∪{798},Finset.union_subset s2Step46EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step46Front_sigma : s2Step46EntryGvAfter.checkBorrow 1 [798]=some s2Step46FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step46EntryGvAfter,arenaWires]
  · rfl
theorem s2Step46Front_branch : s2Step46FrontSigmaArena.checkBorrow 1 [803]=some s2Step46HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step46FrontSigmaArena,s2Step46EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step46FrontSigmaArena,s2Step46EntryGvAfter,s2Step46HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step46Front_entry : HmrFrontEntryValid s2Step46EntryFBefore s2Step46FrontBank 245 36 ⟨244,244,36,36⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step46FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step46EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step46EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step46FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step46FrontPlan : HmrSourceFront := ⟨s2Step46EntryGvAfter,s2Step46FrontPair,(growRow 768 s2Step46EntryFFresh ++ (growRow 769 s2Step46EntryGFresh ++ (growRow 770 s2Step46EntryFvFresh ++ (growRow 771 s2Step46EntryGvFresh ++ [])))),s2Step46FrontSigmaArena,[798],s2Step46HeadGBefore,[803],
  s2Step46HeadFvAfter,s2Step46FrontHead,(growRow 769 s2Step46HeadGFresh ++ (growRow 768 s2Step46HeadFFresh ++ (growRow 771 s2Step46HeadGvFresh ++ (growRow 770 s2Step46HeadFvFresh ++ [])))),s2Step46F4Plan,s2Step46CounterDuring,s2Step46CounterWork,s2Step46ExitGvAfter,s2Step46FrontOut,(shrinkRow 769 s2Step46ExitGExtra ++ (shrinkRow 768 s2Step46ExitFExtra ++ (shrinkRow 770 s2Step46ExitFvExtra ++ (shrinkRow 771 s2Step46ExitGvExtra ++ []))))⟩
theorem s2Step46Front_checked : compileHmrSourceFrontLog s2Step46EntryFBefore s2Step46FrontBank 245 36 ⟨244,244,36,36⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step46FrontLog=some s2Step46FrontPlan := by
  have pairEq : s2Step46FrontPair=⟨s2Step46HeadFRow,s2Step46HeadGRow,s2Step46HeadFvRow,s2Step46HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step46FrontHead=⟨s2Step46ExitFRow,s2Step46ExitGRow,s2Step46ExitFvRow,s2Step46ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step46Add0A=s2Step46FrontHead.f.wires := by decide +kernel
  have gEq : s2Step46Add0B=s2Step46FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step46Add1A=s2Step46FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step46Add1B=s2Step46FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step46EntryFBefore s2Step46FrontBank 245 36 ⟨244,244,36,36⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step46FrontLog s2Step46FrontPlan
  · exact s2Step46Front_entry
  · exact s2Step46EntryBank_checked
  · exact s2Step46Front_sigma
  · rfl
  · exact s2Step46Front_branch
  · rfl
  · simpa only [s2Step46FrontPlan,pairEq] using s2Step46HeadBank_checked
  · simpa only [s2Step46FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step46F4_checked
  · exact s2Step46Counter_checked
  · rfl
  · simpa only [s2Step46FrontPlan,headEq] using s2Step46ExitBank_checked
def s2Step47FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[805], [806], [801], [791]],[[], [], [], []]⟩,[803],[798],[787],[790],[792, 800, 844, 845, 846, 847, 849, 851, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[792, 800, 844, 845, 846, 847, 849, 851, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890],[787, 790, 792, 800]⟩
def s2Step47FrontBank : WindowBank := ⟨s2Step47EntryFRow,s2Step47EntryGRow,s2Step47EntryFvRow,s2Step47EntryGvRow⟩
def s2Step47FrontPair : WindowBank := ⟨s2Step47EntryFOut,s2Step47EntryGOut,s2Step47EntryFvOut,s2Step47EntryGvOut⟩
def s2Step47FrontHead : WindowBank := ⟨s2Step47HeadFOut,s2Step47HeadGOut,s2Step47HeadFvOut,s2Step47HeadGvOut⟩
def s2Step47FrontOut : WindowBank := ⟨s2Step47ExitFOut,s2Step47ExitGOut,s2Step47ExitFvOut,s2Step47ExitGvOut⟩
def s2Step47FrontSigmaArena : Arena := ⟨s2Step47EntryGvAfter.live∪{803},Finset.union_subset s2Step47EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step47Front_sigma : s2Step47EntryGvAfter.checkBorrow 1 [803]=some s2Step47FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step47EntryGvAfter,s2Step47EntryFBefore,arenaWires]
  · rfl
theorem s2Step47Front_branch : s2Step47FrontSigmaArena.checkBorrow 1 [798]=some s2Step47HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step47FrontSigmaArena,s2Step47EntryGvAfter,s2Step47EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step47FrontSigmaArena,s2Step47EntryGvAfter,s2Step47EntryFBefore,s2Step47HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step47Front_entry : HmrFrontEntryValid s2Step47EntryFBefore s2Step47FrontBank 244 36 ⟨244,244,37,37⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step47FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step47EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step47EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step47FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step47FrontPlan : HmrSourceFront := ⟨s2Step47EntryGvAfter,s2Step47FrontPair,(growRow 768 s2Step47EntryFFresh ++ (growRow 769 s2Step47EntryGFresh ++ (growRow 770 s2Step47EntryFvFresh ++ (growRow 771 s2Step47EntryGvFresh ++ [])))),s2Step47FrontSigmaArena,[803],s2Step47HeadGBefore,[798],
  s2Step47HeadFvAfter,s2Step47FrontHead,(growRow 769 s2Step47HeadGFresh ++ (growRow 768 s2Step47HeadFFresh ++ (growRow 771 s2Step47HeadGvFresh ++ (growRow 770 s2Step47HeadFvFresh ++ [])))),s2Step47F4Plan,s2Step47CounterDuring,s2Step47CounterWork,s2Step47ExitGvAfter,s2Step47FrontOut,(shrinkRow 769 s2Step47ExitGExtra ++ (shrinkRow 768 s2Step47ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))⟩
theorem s2Step47Front_checked : compileHmrSourceFrontLog s2Step47EntryFBefore s2Step47FrontBank 244 36 ⟨244,244,37,37⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step47FrontLog=some s2Step47FrontPlan := by
  have pairEq : s2Step47FrontPair=⟨s2Step47HeadFRow,s2Step47HeadGRow,s2Step47HeadFvRow,s2Step47HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step47FrontHead=⟨s2Step47ExitFRow,s2Step47ExitGRow,s2Step47ExitFvRow,s2Step47ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step47Add0A=s2Step47FrontHead.f.wires := by decide +kernel
  have gEq : s2Step47Add0B=s2Step47FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step47Add1A=s2Step47FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step47Add1B=s2Step47FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step47EntryFBefore s2Step47FrontBank 244 36 ⟨244,244,37,37⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step47FrontLog s2Step47FrontPlan
  · exact s2Step47Front_entry
  · exact s2Step47EntryBank_checked
  · exact s2Step47Front_sigma
  · rfl
  · exact s2Step47Front_branch
  · rfl
  · simpa only [s2Step47FrontPlan,pairEq] using s2Step47HeadBank_checked
  · simpa only [s2Step47FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step47F4_checked
  · exact s2Step47Counter_checked
  · rfl
  · simpa only [s2Step47FrontPlan,headEq] using s2Step47ExitBank_checked

end ECDSAAdd.Arithmetic.Paper935
