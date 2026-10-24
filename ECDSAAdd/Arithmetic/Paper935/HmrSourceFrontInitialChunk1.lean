import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryBank
import ECDSAAdd.Arithmetic.Paper935.HmrSourceExitBank
import ECDSAAdd.Arithmetic.Paper935.HmrSourceF4Parts
import ECDSAAdd.Arithmetic.Paper935.HmrSourceCounterParts
import ECDSAAdd.Arithmetic.Paper935.HmrFrontComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitialChunk0

namespace ECDSAAdd.Arithmetic.Paper935
def s2Step16FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [783], [], [814, 780]],[[782], [784], [819], [820]],[[], [], [], []]⟩,[816],[781],[821],[822],[824, 825, 826, 827, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[824, 825, 826, 827, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842],[821, 822, 824, 825]⟩
def s2Step16FrontBank : WindowBank := ⟨s2Step16EntryFRow,s2Step16EntryGRow,s2Step16EntryFvRow,s2Step16EntryGvRow⟩
def s2Step16FrontPair : WindowBank := ⟨s2Step16EntryFOut,s2Step16EntryGOut,s2Step16EntryFvOut,s2Step16EntryGvOut⟩
def s2Step16FrontHead : WindowBank := ⟨s2Step16HeadFOut,s2Step16HeadGOut,s2Step16HeadFvOut,s2Step16HeadGvOut⟩
def s2Step16FrontOut : WindowBank := ⟨s2Step16ExitFOut,s2Step16ExitGOut,s2Step16ExitFvOut,s2Step16ExitGvOut⟩
def s2Step16FrontSigmaArena : Arena := ⟨s2Step16EntryGvAfter.live∪{816},Finset.union_subset s2Step16EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step16Front_sigma : s2Step16EntryGvAfter.checkBorrow 1 [816]=some s2Step16FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step16EntryGvAfter,arenaWires]
  · rfl
theorem s2Step16Front_branch : s2Step16FrontSigmaArena.checkBorrow 1 [781]=some s2Step16HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step16FrontSigmaArena,s2Step16EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step16FrontSigmaArena,s2Step16EntryGvAfter,s2Step16HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step16Front_entry : HmrFrontEntryValid s2Step16EntryFBefore s2Step16FrontBank 256 17 ⟨256,255,18,16⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step16FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step16EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step16EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step16FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step16FrontPlan : HmrSourceFront := ⟨s2Step16EntryGvAfter,s2Step16FrontPair,(growRow 768 s2Step16EntryFFresh ++ (growRow 769 s2Step16EntryGFresh ++ (growRow 770 s2Step16EntryFvFresh ++ (growRow 771 s2Step16EntryGvFresh ++ [])))),s2Step16FrontSigmaArena,[816],s2Step16HeadGBefore,[781],
  s2Step16HeadFvAfter,s2Step16FrontHead,(growRow 769 s2Step16HeadGFresh ++ (growRow 768 s2Step16HeadFFresh ++ (growRow 771 s2Step16HeadGvFresh ++ (growRow 770 s2Step16HeadFvFresh ++ [])))),s2Step16F4Plan,s2Step16CounterDuring,s2Step16CounterWork,s2Step16ExitGvAfter,s2Step16FrontOut,(shrinkRow 769 s2Step16ExitGExtra ++ (shrinkRow 768 s2Step16ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step16ExitGvExtra ++ []))))⟩
theorem s2Step16Front_checked : compileHmrSourceFrontLog s2Step16EntryFBefore s2Step16FrontBank 256 17 ⟨256,255,18,16⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step16FrontLog=some s2Step16FrontPlan := by
  have pairEq : s2Step16FrontPair=⟨s2Step16HeadFRow,s2Step16HeadGRow,s2Step16HeadFvRow,s2Step16HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step16FrontHead=⟨s2Step16ExitFRow,s2Step16ExitGRow,s2Step16ExitFvRow,s2Step16ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step16Add0A=s2Step16FrontHead.f.wires := by decide +kernel
  have gEq : s2Step16Add0B=s2Step16FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step16Add1A=s2Step16FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step16Add1B=s2Step16FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step16EntryFBefore s2Step16FrontBank 256 17 ⟨256,255,18,16⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step16FrontLog s2Step16FrontPlan
  · exact s2Step16Front_entry
  · exact s2Step16EntryBank_checked
  · exact s2Step16Front_sigma
  · rfl
  · exact s2Step16Front_branch
  · rfl
  · simpa only [s2Step16FrontPlan,pairEq] using s2Step16HeadBank_checked
  · simpa only [s2Step16FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step16F4_checked
  · exact s2Step16Counter_checked
  · rfl
  · simpa only [s2Step16FrontPlan,headEq] using s2Step16ExitBank_checked
def s2Step17FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [781], [], [816, 780]],[[783], [782], [821], [822]],[[], [], [], []]⟩,[819],[784],[824],[825],[826, 827, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[826, 827, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845],[824, 825, 826, 827]⟩
def s2Step17FrontBank : WindowBank := ⟨s2Step17EntryFRow,s2Step17EntryGRow,s2Step17EntryFvRow,s2Step17EntryGvRow⟩
def s2Step17FrontPair : WindowBank := ⟨s2Step17EntryFOut,s2Step17EntryGOut,s2Step17EntryFvOut,s2Step17EntryGvOut⟩
def s2Step17FrontHead : WindowBank := ⟨s2Step17HeadFOut,s2Step17HeadGOut,s2Step17HeadFvOut,s2Step17HeadGvOut⟩
def s2Step17FrontOut : WindowBank := ⟨s2Step17ExitFOut,s2Step17ExitGOut,s2Step17ExitFvOut,s2Step17ExitGvOut⟩
def s2Step17FrontSigmaArena : Arena := ⟨s2Step17EntryGvAfter.live∪{819},Finset.union_subset s2Step17EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step17Front_sigma : s2Step17EntryGvAfter.checkBorrow 1 [819]=some s2Step17FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step17EntryGvAfter,arenaWires]
  · rfl
theorem s2Step17Front_branch : s2Step17FrontSigmaArena.checkBorrow 1 [784]=some s2Step17HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step17FrontSigmaArena,s2Step17EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step17FrontSigmaArena,s2Step17EntryGvAfter,s2Step17HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step17Front_entry : HmrFrontEntryValid s2Step17EntryFBefore s2Step17FrontBank 256 18 ⟨256,255,19,17⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step17FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step17EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step17EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step17FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step17FrontPlan : HmrSourceFront := ⟨s2Step17EntryGvAfter,s2Step17FrontPair,(growRow 768 s2Step17EntryFFresh ++ (growRow 769 s2Step17EntryGFresh ++ (growRow 770 s2Step17EntryFvFresh ++ (growRow 771 s2Step17EntryGvFresh ++ [])))),s2Step17FrontSigmaArena,[819],s2Step17HeadGBefore,[784],
  s2Step17HeadFvAfter,s2Step17FrontHead,(growRow 769 s2Step17HeadGFresh ++ (growRow 768 s2Step17HeadFFresh ++ (growRow 771 s2Step17HeadGvFresh ++ (growRow 770 s2Step17HeadFvFresh ++ [])))),s2Step17F4Plan,s2Step17CounterDuring,s2Step17CounterWork,s2Step17ExitGvAfter,s2Step17FrontOut,(shrinkRow 769 s2Step17ExitGExtra ++ (shrinkRow 768 s2Step17ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step17ExitGvExtra ++ []))))⟩
theorem s2Step17Front_checked : compileHmrSourceFrontLog s2Step17EntryFBefore s2Step17FrontBank 256 18 ⟨256,255,19,17⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step17FrontLog=some s2Step17FrontPlan := by
  have pairEq : s2Step17FrontPair=⟨s2Step17HeadFRow,s2Step17HeadGRow,s2Step17HeadFvRow,s2Step17HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step17FrontHead=⟨s2Step17ExitFRow,s2Step17ExitGRow,s2Step17ExitFvRow,s2Step17ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step17Add0A=s2Step17FrontHead.f.wires := by decide +kernel
  have gEq : s2Step17Add0B=s2Step17FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step17Add1A=s2Step17FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step17Add1B=s2Step17FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step17EntryFBefore s2Step17FrontBank 256 18 ⟨256,255,19,17⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step17FrontLog s2Step17FrontPlan
  · exact s2Step17Front_entry
  · exact s2Step17EntryBank_checked
  · exact s2Step17Front_sigma
  · rfl
  · exact s2Step17Front_branch
  · rfl
  · simpa only [s2Step17FrontPlan,pairEq] using s2Step17HeadBank_checked
  · simpa only [s2Step17FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step17F4_checked
  · exact s2Step17Counter_checked
  · rfl
  · simpa only [s2Step17FrontPlan,headEq] using s2Step17ExitBank_checked
def s2Step18FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [784], [], [819, 780]],[[781], [783], [824], [825]],[[], [], [], []]⟩,[821],[782],[826],[827],[829, 830, 831, 832, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[829, 830, 831, 832, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849],[826, 827, 829, 830]⟩
def s2Step18FrontBank : WindowBank := ⟨s2Step18EntryFRow,s2Step18EntryGRow,s2Step18EntryFvRow,s2Step18EntryGvRow⟩
def s2Step18FrontPair : WindowBank := ⟨s2Step18EntryFOut,s2Step18EntryGOut,s2Step18EntryFvOut,s2Step18EntryGvOut⟩
def s2Step18FrontHead : WindowBank := ⟨s2Step18HeadFOut,s2Step18HeadGOut,s2Step18HeadFvOut,s2Step18HeadGvOut⟩
def s2Step18FrontOut : WindowBank := ⟨s2Step18ExitFOut,s2Step18ExitGOut,s2Step18ExitFvOut,s2Step18ExitGvOut⟩
def s2Step18FrontSigmaArena : Arena := ⟨s2Step18EntryGvAfter.live∪{821},Finset.union_subset s2Step18EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step18Front_sigma : s2Step18EntryGvAfter.checkBorrow 1 [821]=some s2Step18FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step18EntryGvAfter,arenaWires]
  · rfl
theorem s2Step18Front_branch : s2Step18FrontSigmaArena.checkBorrow 1 [782]=some s2Step18HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step18FrontSigmaArena,s2Step18EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step18FrontSigmaArena,s2Step18EntryGvAfter,s2Step18HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step18Front_entry : HmrFrontEntryValid s2Step18EntryFBefore s2Step18FrontBank 256 19 ⟨256,255,20,18⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step18FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step18EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step18EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step18FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step18FrontPlan : HmrSourceFront := ⟨s2Step18EntryGvAfter,s2Step18FrontPair,(growRow 768 s2Step18EntryFFresh ++ (growRow 769 s2Step18EntryGFresh ++ (growRow 770 s2Step18EntryFvFresh ++ (growRow 771 s2Step18EntryGvFresh ++ [])))),s2Step18FrontSigmaArena,[821],s2Step18HeadGBefore,[782],
  s2Step18HeadFvAfter,s2Step18FrontHead,(growRow 769 s2Step18HeadGFresh ++ (growRow 768 s2Step18HeadFFresh ++ (growRow 771 s2Step18HeadGvFresh ++ (growRow 770 s2Step18HeadFvFresh ++ [])))),s2Step18F4Plan,s2Step18CounterDuring,s2Step18CounterWork,s2Step18ExitGvAfter,s2Step18FrontOut,(shrinkRow 769 s2Step18ExitGExtra ++ (shrinkRow 768 s2Step18ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step18ExitGvExtra ++ []))))⟩
theorem s2Step18Front_checked : compileHmrSourceFrontLog s2Step18EntryFBefore s2Step18FrontBank 256 19 ⟨256,255,20,18⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step18FrontLog=some s2Step18FrontPlan := by
  have pairEq : s2Step18FrontPair=⟨s2Step18HeadFRow,s2Step18HeadGRow,s2Step18HeadFvRow,s2Step18HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step18FrontHead=⟨s2Step18ExitFRow,s2Step18ExitGRow,s2Step18ExitFvRow,s2Step18ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step18Add0A=s2Step18FrontHead.f.wires := by decide +kernel
  have gEq : s2Step18Add0B=s2Step18FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step18Add1A=s2Step18FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step18Add1B=s2Step18FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step18EntryFBefore s2Step18FrontBank 256 19 ⟨256,255,20,18⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step18FrontLog s2Step18FrontPlan
  · exact s2Step18Front_entry
  · exact s2Step18EntryBank_checked
  · exact s2Step18Front_sigma
  · rfl
  · exact s2Step18Front_branch
  · rfl
  · simpa only [s2Step18FrontPlan,pairEq] using s2Step18HeadBank_checked
  · simpa only [s2Step18FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step18F4_checked
  · exact s2Step18Counter_checked
  · rfl
  · simpa only [s2Step18FrontPlan,headEq] using s2Step18ExitBank_checked
def s2Step19FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [782], [], [821, 780]],[[784], [781], [826], [827]],[[], [], [], []]⟩,[824],[783],[829],[830],[831, 832, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[831, 832, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852],[829, 830, 831, 832]⟩
def s2Step19FrontBank : WindowBank := ⟨s2Step19EntryFRow,s2Step19EntryGRow,s2Step19EntryFvRow,s2Step19EntryGvRow⟩
def s2Step19FrontPair : WindowBank := ⟨s2Step19EntryFOut,s2Step19EntryGOut,s2Step19EntryFvOut,s2Step19EntryGvOut⟩
def s2Step19FrontHead : WindowBank := ⟨s2Step19HeadFOut,s2Step19HeadGOut,s2Step19HeadFvOut,s2Step19HeadGvOut⟩
def s2Step19FrontOut : WindowBank := ⟨s2Step19ExitFOut,s2Step19ExitGOut,s2Step19ExitFvOut,s2Step19ExitGvOut⟩
def s2Step19FrontSigmaArena : Arena := ⟨s2Step19EntryGvAfter.live∪{824},Finset.union_subset s2Step19EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step19Front_sigma : s2Step19EntryGvAfter.checkBorrow 1 [824]=some s2Step19FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step19EntryGvAfter,arenaWires]
  · rfl
theorem s2Step19Front_branch : s2Step19FrontSigmaArena.checkBorrow 1 [783]=some s2Step19HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step19FrontSigmaArena,s2Step19EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step19FrontSigmaArena,s2Step19EntryGvAfter,s2Step19HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step19Front_entry : HmrFrontEntryValid s2Step19EntryFBefore s2Step19FrontBank 256 20 ⟨256,255,21,19⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step19FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step19EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step19EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<821) ∨ (822≤q ∧ q<824) ∨ (825≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step19FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step19FrontPlan : HmrSourceFront := ⟨s2Step19EntryGvAfter,s2Step19FrontPair,(growRow 768 s2Step19EntryFFresh ++ (growRow 769 s2Step19EntryGFresh ++ (growRow 770 s2Step19EntryFvFresh ++ (growRow 771 s2Step19EntryGvFresh ++ [])))),s2Step19FrontSigmaArena,[824],s2Step19HeadGBefore,[783],
  s2Step19HeadFvAfter,s2Step19FrontHead,(growRow 769 s2Step19HeadGFresh ++ (growRow 768 s2Step19HeadFFresh ++ (growRow 771 s2Step19HeadGvFresh ++ (growRow 770 s2Step19HeadFvFresh ++ [])))),s2Step19F4Plan,s2Step19CounterDuring,s2Step19CounterWork,s2Step19ExitGvAfter,s2Step19FrontOut,(shrinkRow 769 s2Step19ExitGExtra ++ (shrinkRow 768 s2Step19ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step19ExitGvExtra ++ []))))⟩
theorem s2Step19Front_checked : compileHmrSourceFrontLog s2Step19EntryFBefore s2Step19FrontBank 256 20 ⟨256,255,21,19⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step19FrontLog=some s2Step19FrontPlan := by
  have pairEq : s2Step19FrontPair=⟨s2Step19HeadFRow,s2Step19HeadGRow,s2Step19HeadFvRow,s2Step19HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step19FrontHead=⟨s2Step19ExitFRow,s2Step19ExitGRow,s2Step19ExitFvRow,s2Step19ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step19Add0A=s2Step19FrontHead.f.wires := by decide +kernel
  have gEq : s2Step19Add0B=s2Step19FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step19Add1A=s2Step19FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step19Add1B=s2Step19FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step19EntryFBefore s2Step19FrontBank 256 20 ⟨256,255,21,19⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step19FrontLog s2Step19FrontPlan
  · exact s2Step19Front_entry
  · exact s2Step19EntryBank_checked
  · exact s2Step19Front_sigma
  · rfl
  · exact s2Step19Front_branch
  · rfl
  · simpa only [s2Step19FrontPlan,pairEq] using s2Step19HeadBank_checked
  · simpa only [s2Step19FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step19F4_checked
  · exact s2Step19Counter_checked
  · rfl
  · simpa only [s2Step19FrontPlan,headEq] using s2Step19ExitBank_checked
def s2Step20FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [783], [], [824, 780]],[[782], [784], [829], [830]],[[], [], [], []]⟩,[826],[781],[831],[832],[834, 835, 836, 837, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[834, 835, 836, 837, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856],[831, 832, 834, 835]⟩
def s2Step20FrontBank : WindowBank := ⟨s2Step20EntryFRow,s2Step20EntryGRow,s2Step20EntryFvRow,s2Step20EntryGvRow⟩
def s2Step20FrontPair : WindowBank := ⟨s2Step20EntryFOut,s2Step20EntryGOut,s2Step20EntryFvOut,s2Step20EntryGvOut⟩
def s2Step20FrontHead : WindowBank := ⟨s2Step20HeadFOut,s2Step20HeadGOut,s2Step20HeadFvOut,s2Step20HeadGvOut⟩
def s2Step20FrontOut : WindowBank := ⟨s2Step20ExitFOut,s2Step20ExitGOut,s2Step20ExitFvOut,s2Step20ExitGvOut⟩
def s2Step20FrontSigmaArena : Arena := ⟨s2Step20EntryGvAfter.live∪{826},Finset.union_subset s2Step20EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step20Front_sigma : s2Step20EntryGvAfter.checkBorrow 1 [826]=some s2Step20FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step20EntryGvAfter,arenaWires]
  · rfl
theorem s2Step20Front_branch : s2Step20FrontSigmaArena.checkBorrow 1 [781]=some s2Step20HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step20FrontSigmaArena,s2Step20EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step20FrontSigmaArena,s2Step20EntryGvAfter,s2Step20HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step20Front_entry : HmrFrontEntryValid s2Step20EntryFBefore s2Step20FrontBank 256 21 ⟨256,255,22,20⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step20FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step20EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step20EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<824) ∨ (825≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step20FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step20FrontPlan : HmrSourceFront := ⟨s2Step20EntryGvAfter,s2Step20FrontPair,(growRow 768 s2Step20EntryFFresh ++ (growRow 769 s2Step20EntryGFresh ++ (growRow 770 s2Step20EntryFvFresh ++ (growRow 771 s2Step20EntryGvFresh ++ [])))),s2Step20FrontSigmaArena,[826],s2Step20HeadGBefore,[781],
  s2Step20HeadFvAfter,s2Step20FrontHead,(growRow 769 s2Step20HeadGFresh ++ (growRow 768 s2Step20HeadFFresh ++ (growRow 771 s2Step20HeadGvFresh ++ (growRow 770 s2Step20HeadFvFresh ++ [])))),s2Step20F4Plan,s2Step20CounterDuring,s2Step20CounterWork,s2Step20ExitGvAfter,s2Step20FrontOut,(shrinkRow 769 s2Step20ExitGExtra ++ (shrinkRow 768 s2Step20ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step20ExitGvExtra ++ []))))⟩
theorem s2Step20Front_checked : compileHmrSourceFrontLog s2Step20EntryFBefore s2Step20FrontBank 256 21 ⟨256,255,22,20⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step20FrontLog=some s2Step20FrontPlan := by
  have pairEq : s2Step20FrontPair=⟨s2Step20HeadFRow,s2Step20HeadGRow,s2Step20HeadFvRow,s2Step20HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step20FrontHead=⟨s2Step20ExitFRow,s2Step20ExitGRow,s2Step20ExitFvRow,s2Step20ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step20Add0A=s2Step20FrontHead.f.wires := by decide +kernel
  have gEq : s2Step20Add0B=s2Step20FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step20Add1A=s2Step20FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step20Add1B=s2Step20FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step20EntryFBefore s2Step20FrontBank 256 21 ⟨256,255,22,20⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step20FrontLog s2Step20FrontPlan
  · exact s2Step20Front_entry
  · exact s2Step20EntryBank_checked
  · exact s2Step20Front_sigma
  · rfl
  · exact s2Step20Front_branch
  · rfl
  · simpa only [s2Step20FrontPlan,pairEq] using s2Step20HeadBank_checked
  · simpa only [s2Step20FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step20F4_checked
  · exact s2Step20Counter_checked
  · rfl
  · simpa only [s2Step20FrontPlan,headEq] using s2Step20ExitBank_checked
def s2Step21FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [781], [], [826, 780]],[[783], [782], [831], [832]],[[], [], [], []]⟩,[829],[784],[834],[835],[836, 837, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[836, 837, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859],[834, 835, 836, 837]⟩
def s2Step21FrontBank : WindowBank := ⟨s2Step21EntryFRow,s2Step21EntryGRow,s2Step21EntryFvRow,s2Step21EntryGvRow⟩
def s2Step21FrontPair : WindowBank := ⟨s2Step21EntryFOut,s2Step21EntryGOut,s2Step21EntryFvOut,s2Step21EntryGvOut⟩
def s2Step21FrontHead : WindowBank := ⟨s2Step21HeadFOut,s2Step21HeadGOut,s2Step21HeadFvOut,s2Step21HeadGvOut⟩
def s2Step21FrontOut : WindowBank := ⟨s2Step21ExitFOut,s2Step21ExitGOut,s2Step21ExitFvOut,s2Step21ExitGvOut⟩
def s2Step21FrontSigmaArena : Arena := ⟨s2Step21EntryGvAfter.live∪{829},Finset.union_subset s2Step21EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step21Front_sigma : s2Step21EntryGvAfter.checkBorrow 1 [829]=some s2Step21FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step21EntryGvAfter,arenaWires]
  · rfl
theorem s2Step21Front_branch : s2Step21FrontSigmaArena.checkBorrow 1 [784]=some s2Step21HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step21FrontSigmaArena,s2Step21EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step21FrontSigmaArena,s2Step21EntryGvAfter,s2Step21HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step21Front_entry : HmrFrontEntryValid s2Step21EntryFBefore s2Step21FrontBank 256 22 ⟨256,255,23,21⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step21FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step21EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step21EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step21FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step21FrontPlan : HmrSourceFront := ⟨s2Step21EntryGvAfter,s2Step21FrontPair,(growRow 768 s2Step21EntryFFresh ++ (growRow 769 s2Step21EntryGFresh ++ (growRow 770 s2Step21EntryFvFresh ++ (growRow 771 s2Step21EntryGvFresh ++ [])))),s2Step21FrontSigmaArena,[829],s2Step21HeadGBefore,[784],
  s2Step21HeadFvAfter,s2Step21FrontHead,(growRow 769 s2Step21HeadGFresh ++ (growRow 768 s2Step21HeadFFresh ++ (growRow 771 s2Step21HeadGvFresh ++ (growRow 770 s2Step21HeadFvFresh ++ [])))),s2Step21F4Plan,s2Step21CounterDuring,s2Step21CounterWork,s2Step21ExitGvAfter,s2Step21FrontOut,(shrinkRow 769 s2Step21ExitGExtra ++ (shrinkRow 768 s2Step21ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step21ExitGvExtra ++ []))))⟩
theorem s2Step21Front_checked : compileHmrSourceFrontLog s2Step21EntryFBefore s2Step21FrontBank 256 22 ⟨256,255,23,21⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step21FrontLog=some s2Step21FrontPlan := by
  have pairEq : s2Step21FrontPair=⟨s2Step21HeadFRow,s2Step21HeadGRow,s2Step21HeadFvRow,s2Step21HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step21FrontHead=⟨s2Step21ExitFRow,s2Step21ExitGRow,s2Step21ExitFvRow,s2Step21ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step21Add0A=s2Step21FrontHead.f.wires := by decide +kernel
  have gEq : s2Step21Add0B=s2Step21FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step21Add1A=s2Step21FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step21Add1B=s2Step21FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step21EntryFBefore s2Step21FrontBank 256 22 ⟨256,255,23,21⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step21FrontLog s2Step21FrontPlan
  · exact s2Step21Front_entry
  · exact s2Step21EntryBank_checked
  · exact s2Step21Front_sigma
  · rfl
  · exact s2Step21Front_branch
  · rfl
  · simpa only [s2Step21FrontPlan,pairEq] using s2Step21HeadBank_checked
  · simpa only [s2Step21FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step21F4_checked
  · exact s2Step21Counter_checked
  · rfl
  · simpa only [s2Step21FrontPlan,headEq] using s2Step21ExitBank_checked
def s2Step22FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [784], [], [829, 780]],[[781], [783], [834], [835]],[[], [], [], []]⟩,[831],[782],[836],[837],[839, 840, 841, 842, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[839, 840, 841, 842, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863],[836, 837, 839, 840]⟩
def s2Step22FrontBank : WindowBank := ⟨s2Step22EntryFRow,s2Step22EntryGRow,s2Step22EntryFvRow,s2Step22EntryGvRow⟩
def s2Step22FrontPair : WindowBank := ⟨s2Step22EntryFOut,s2Step22EntryGOut,s2Step22EntryFvOut,s2Step22EntryGvOut⟩
def s2Step22FrontHead : WindowBank := ⟨s2Step22HeadFOut,s2Step22HeadGOut,s2Step22HeadFvOut,s2Step22HeadGvOut⟩
def s2Step22FrontOut : WindowBank := ⟨s2Step22ExitFOut,s2Step22ExitGOut,s2Step22ExitFvOut,s2Step22ExitGvOut⟩
def s2Step22FrontSigmaArena : Arena := ⟨s2Step22EntryGvAfter.live∪{831},Finset.union_subset s2Step22EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step22Front_sigma : s2Step22EntryGvAfter.checkBorrow 1 [831]=some s2Step22FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step22EntryGvAfter,arenaWires]
  · rfl
theorem s2Step22Front_branch : s2Step22FrontSigmaArena.checkBorrow 1 [782]=some s2Step22HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step22FrontSigmaArena,s2Step22EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step22FrontSigmaArena,s2Step22EntryGvAfter,s2Step22HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step22Front_entry : HmrFrontEntryValid s2Step22EntryFBefore s2Step22FrontBank 256 23 ⟨256,255,24,22⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step22FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step22EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step22EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step22FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step22FrontPlan : HmrSourceFront := ⟨s2Step22EntryGvAfter,s2Step22FrontPair,(growRow 768 s2Step22EntryFFresh ++ (growRow 769 s2Step22EntryGFresh ++ (growRow 770 s2Step22EntryFvFresh ++ (growRow 771 s2Step22EntryGvFresh ++ [])))),s2Step22FrontSigmaArena,[831],s2Step22HeadGBefore,[782],
  s2Step22HeadFvAfter,s2Step22FrontHead,(growRow 769 s2Step22HeadGFresh ++ (growRow 768 s2Step22HeadFFresh ++ (growRow 771 s2Step22HeadGvFresh ++ (growRow 770 s2Step22HeadFvFresh ++ [])))),s2Step22F4Plan,s2Step22CounterDuring,s2Step22CounterWork,s2Step22ExitGvAfter,s2Step22FrontOut,(shrinkRow 769 s2Step22ExitGExtra ++ (shrinkRow 768 s2Step22ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step22ExitGvExtra ++ []))))⟩
theorem s2Step22Front_checked : compileHmrSourceFrontLog s2Step22EntryFBefore s2Step22FrontBank 256 23 ⟨256,255,24,22⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step22FrontLog=some s2Step22FrontPlan := by
  have pairEq : s2Step22FrontPair=⟨s2Step22HeadFRow,s2Step22HeadGRow,s2Step22HeadFvRow,s2Step22HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step22FrontHead=⟨s2Step22ExitFRow,s2Step22ExitGRow,s2Step22ExitFvRow,s2Step22ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step22Add0A=s2Step22FrontHead.f.wires := by decide +kernel
  have gEq : s2Step22Add0B=s2Step22FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step22Add1A=s2Step22FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step22Add1B=s2Step22FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step22EntryFBefore s2Step22FrontBank 256 23 ⟨256,255,24,22⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step22FrontLog s2Step22FrontPlan
  · exact s2Step22Front_entry
  · exact s2Step22EntryBank_checked
  · exact s2Step22Front_sigma
  · rfl
  · exact s2Step22Front_branch
  · rfl
  · simpa only [s2Step22FrontPlan,pairEq] using s2Step22HeadBank_checked
  · simpa only [s2Step22FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step22F4_checked
  · exact s2Step22Counter_checked
  · rfl
  · simpa only [s2Step22FrontPlan,headEq] using s2Step22ExitBank_checked
def s2Step23FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [782], [], [831, 780]],[[784], [781], [836], [837]],[[], [], [], []]⟩,[834],[783],[839],[840],[841, 842, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[841, 842, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866],[839, 840, 841, 842]⟩
def s2Step23FrontBank : WindowBank := ⟨s2Step23EntryFRow,s2Step23EntryGRow,s2Step23EntryFvRow,s2Step23EntryGvRow⟩
def s2Step23FrontPair : WindowBank := ⟨s2Step23EntryFOut,s2Step23EntryGOut,s2Step23EntryFvOut,s2Step23EntryGvOut⟩
def s2Step23FrontHead : WindowBank := ⟨s2Step23HeadFOut,s2Step23HeadGOut,s2Step23HeadFvOut,s2Step23HeadGvOut⟩
def s2Step23FrontOut : WindowBank := ⟨s2Step23ExitFOut,s2Step23ExitGOut,s2Step23ExitFvOut,s2Step23ExitGvOut⟩
def s2Step23FrontSigmaArena : Arena := ⟨s2Step23EntryGvAfter.live∪{834},Finset.union_subset s2Step23EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step23Front_sigma : s2Step23EntryGvAfter.checkBorrow 1 [834]=some s2Step23FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step23EntryGvAfter,arenaWires]
  · rfl
theorem s2Step23Front_branch : s2Step23FrontSigmaArena.checkBorrow 1 [783]=some s2Step23HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step23FrontSigmaArena,s2Step23EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step23FrontSigmaArena,s2Step23EntryGvAfter,s2Step23HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step23Front_entry : HmrFrontEntryValid s2Step23EntryFBefore s2Step23FrontBank 256 24 ⟨256,255,25,23⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step23FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step23EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step23EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step23FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step23FrontPlan : HmrSourceFront := ⟨s2Step23EntryGvAfter,s2Step23FrontPair,(growRow 768 s2Step23EntryFFresh ++ (growRow 769 s2Step23EntryGFresh ++ (growRow 770 s2Step23EntryFvFresh ++ (growRow 771 s2Step23EntryGvFresh ++ [])))),s2Step23FrontSigmaArena,[834],s2Step23HeadGBefore,[783],
  s2Step23HeadFvAfter,s2Step23FrontHead,(growRow 769 s2Step23HeadGFresh ++ (growRow 768 s2Step23HeadFFresh ++ (growRow 771 s2Step23HeadGvFresh ++ (growRow 770 s2Step23HeadFvFresh ++ [])))),s2Step23F4Plan,s2Step23CounterDuring,s2Step23CounterWork,s2Step23ExitGvAfter,s2Step23FrontOut,(shrinkRow 769 s2Step23ExitGExtra ++ (shrinkRow 768 s2Step23ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step23ExitGvExtra ++ []))))⟩
theorem s2Step23Front_checked : compileHmrSourceFrontLog s2Step23EntryFBefore s2Step23FrontBank 256 24 ⟨256,255,25,23⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step23FrontLog=some s2Step23FrontPlan := by
  have pairEq : s2Step23FrontPair=⟨s2Step23HeadFRow,s2Step23HeadGRow,s2Step23HeadFvRow,s2Step23HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step23FrontHead=⟨s2Step23ExitFRow,s2Step23ExitGRow,s2Step23ExitFvRow,s2Step23ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step23Add0A=s2Step23FrontHead.f.wires := by decide +kernel
  have gEq : s2Step23Add0B=s2Step23FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step23Add1A=s2Step23FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step23Add1B=s2Step23FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step23EntryFBefore s2Step23FrontBank 256 24 ⟨256,255,25,23⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step23FrontLog s2Step23FrontPlan
  · exact s2Step23Front_entry
  · exact s2Step23EntryBank_checked
  · exact s2Step23Front_sigma
  · rfl
  · exact s2Step23Front_branch
  · rfl
  · simpa only [s2Step23FrontPlan,pairEq] using s2Step23HeadBank_checked
  · simpa only [s2Step23FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step23F4_checked
  · exact s2Step23Counter_checked
  · rfl
  · simpa only [s2Step23FrontPlan,headEq] using s2Step23ExitBank_checked
def s2Step24FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [783], [], [834, 780]],[[782], [784], [839], [840]],[[], [], [], []]⟩,[836],[781],[841],[842],[844, 845, 846, 847, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[844, 845, 846, 847, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870],[841, 842, 844, 845]⟩
def s2Step24FrontBank : WindowBank := ⟨s2Step24EntryFRow,s2Step24EntryGRow,s2Step24EntryFvRow,s2Step24EntryGvRow⟩
def s2Step24FrontPair : WindowBank := ⟨s2Step24EntryFOut,s2Step24EntryGOut,s2Step24EntryFvOut,s2Step24EntryGvOut⟩
def s2Step24FrontHead : WindowBank := ⟨s2Step24HeadFOut,s2Step24HeadGOut,s2Step24HeadFvOut,s2Step24HeadGvOut⟩
def s2Step24FrontOut : WindowBank := ⟨s2Step24ExitFOut,s2Step24ExitGOut,s2Step24ExitFvOut,s2Step24ExitGvOut⟩
def s2Step24FrontSigmaArena : Arena := ⟨s2Step24EntryGvAfter.live∪{836},Finset.union_subset s2Step24EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step24Front_sigma : s2Step24EntryGvAfter.checkBorrow 1 [836]=some s2Step24FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step24EntryGvAfter,arenaWires]
  · rfl
theorem s2Step24Front_branch : s2Step24FrontSigmaArena.checkBorrow 1 [781]=some s2Step24HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step24FrontSigmaArena,s2Step24EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step24FrontSigmaArena,s2Step24EntryGvAfter,s2Step24HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step24Front_entry : HmrFrontEntryValid s2Step24EntryFBefore s2Step24FrontBank 256 25 ⟨255,254,25,24⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step24FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step24EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step24EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step24FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step24FrontPlan : HmrSourceFront := ⟨s2Step24EntryGvAfter,s2Step24FrontPair,(growRow 768 s2Step24EntryFFresh ++ (growRow 769 s2Step24EntryGFresh ++ (growRow 770 s2Step24EntryFvFresh ++ (growRow 771 s2Step24EntryGvFresh ++ [])))),s2Step24FrontSigmaArena,[836],s2Step24HeadGBefore,[781],
  s2Step24HeadFvAfter,s2Step24FrontHead,(growRow 769 s2Step24HeadGFresh ++ (growRow 768 s2Step24HeadFFresh ++ (growRow 771 s2Step24HeadGvFresh ++ (growRow 770 s2Step24HeadFvFresh ++ [])))),s2Step24F4Plan,s2Step24CounterDuring,s2Step24CounterWork,s2Step24ExitGvAfter,s2Step24FrontOut,(shrinkRow 769 s2Step24ExitGExtra ++ (shrinkRow 768 s2Step24ExitFExtra ++ (shrinkRow 770 s2Step24ExitFvExtra ++ (shrinkRow 771 s2Step24ExitGvExtra ++ []))))⟩
theorem s2Step24Front_checked : compileHmrSourceFrontLog s2Step24EntryFBefore s2Step24FrontBank 256 25 ⟨255,254,25,24⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step24FrontLog=some s2Step24FrontPlan := by
  have pairEq : s2Step24FrontPair=⟨s2Step24HeadFRow,s2Step24HeadGRow,s2Step24HeadFvRow,s2Step24HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step24FrontHead=⟨s2Step24ExitFRow,s2Step24ExitGRow,s2Step24ExitFvRow,s2Step24ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step24Add0A=s2Step24FrontHead.f.wires := by decide +kernel
  have gEq : s2Step24Add0B=s2Step24FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step24Add1A=s2Step24FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step24Add1B=s2Step24FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step24EntryFBefore s2Step24FrontBank 256 25 ⟨255,254,25,24⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step24FrontLog s2Step24FrontPlan
  · exact s2Step24Front_entry
  · exact s2Step24EntryBank_checked
  · exact s2Step24Front_sigma
  · rfl
  · exact s2Step24Front_branch
  · rfl
  · simpa only [s2Step24FrontPlan,pairEq] using s2Step24HeadBank_checked
  · simpa only [s2Step24FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step24F4_checked
  · exact s2Step24Counter_checked
  · rfl
  · simpa only [s2Step24FrontPlan,headEq] using s2Step24ExitBank_checked
def s2Step25FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [781], [], [836]],[[780], [839], [840], [784]],[[], [], [], []]⟩,[779],[785],[783],[782],[841, 842, 844, 845, 846, 847, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[841, 842, 844, 845, 846, 847, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868],[783, 782, 841, 842]⟩
def s2Step25FrontBank : WindowBank := ⟨s2Step25EntryFRow,s2Step25EntryGRow,s2Step25EntryFvRow,s2Step25EntryGvRow⟩
def s2Step25FrontPair : WindowBank := ⟨s2Step25EntryFOut,s2Step25EntryGOut,s2Step25EntryFvOut,s2Step25EntryGvOut⟩
def s2Step25FrontHead : WindowBank := ⟨s2Step25HeadFOut,s2Step25HeadGOut,s2Step25HeadFvOut,s2Step25HeadGvOut⟩
def s2Step25FrontOut : WindowBank := ⟨s2Step25ExitFOut,s2Step25ExitGOut,s2Step25ExitFvOut,s2Step25ExitGvOut⟩
def s2Step25FrontSigmaArena : Arena := ⟨s2Step25EntryGvAfter.live∪{779},Finset.union_subset s2Step25EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step25Front_sigma : s2Step25EntryGvAfter.checkBorrow 1 [779]=some s2Step25FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step25EntryGvAfter,arenaWires]
  · rfl
theorem s2Step25Front_branch : s2Step25FrontSigmaArena.checkBorrow 1 [785]=some s2Step25HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step25FrontSigmaArena,s2Step25EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step25FrontSigmaArena,s2Step25EntryGvAfter,s2Step25HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step25Front_entry : HmrFrontEntryValid s2Step25EntryFBefore s2Step25FrontBank 255 25 ⟨255,254,26,25⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step25FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step25EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step25EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (786≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step25FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step25FrontPlan : HmrSourceFront := ⟨s2Step25EntryGvAfter,s2Step25FrontPair,(growRow 768 s2Step25EntryFFresh ++ (growRow 769 s2Step25EntryGFresh ++ (growRow 770 s2Step25EntryFvFresh ++ (growRow 771 s2Step25EntryGvFresh ++ [])))),s2Step25FrontSigmaArena,[779],s2Step25HeadGBefore,[785],
  s2Step25HeadFvAfter,s2Step25FrontHead,(growRow 769 s2Step25HeadGFresh ++ (growRow 768 s2Step25HeadFFresh ++ (growRow 771 s2Step25HeadGvFresh ++ (growRow 770 s2Step25HeadFvFresh ++ [])))),s2Step25F4Plan,s2Step25CounterDuring,s2Step25CounterWork,s2Step25ExitGvAfter,s2Step25FrontOut,(shrinkRow 769 s2Step25ExitGExtra ++ (shrinkRow 768 s2Step25ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step25ExitGvExtra ++ []))))⟩
theorem s2Step25Front_checked : compileHmrSourceFrontLog s2Step25EntryFBefore s2Step25FrontBank 255 25 ⟨255,254,26,25⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step25FrontLog=some s2Step25FrontPlan := by
  have pairEq : s2Step25FrontPair=⟨s2Step25HeadFRow,s2Step25HeadGRow,s2Step25HeadFvRow,s2Step25HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step25FrontHead=⟨s2Step25ExitFRow,s2Step25ExitGRow,s2Step25ExitFvRow,s2Step25ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step25Add0A=s2Step25FrontHead.f.wires := by decide +kernel
  have gEq : s2Step25Add0B=s2Step25FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step25Add1A=s2Step25FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step25Add1B=s2Step25FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step25EntryFBefore s2Step25FrontBank 255 25 ⟨255,254,26,25⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step25FrontLog s2Step25FrontPlan
  · exact s2Step25Front_entry
  · exact s2Step25EntryBank_checked
  · exact s2Step25Front_sigma
  · rfl
  · exact s2Step25Front_branch
  · rfl
  · simpa only [s2Step25FrontPlan,pairEq] using s2Step25HeadBank_checked
  · simpa only [s2Step25FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step25F4_checked
  · exact s2Step25Counter_checked
  · rfl
  · simpa only [s2Step25FrontPlan,headEq] using s2Step25ExitBank_checked
def s2Step26FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [785], [], [779]],[[781], [780], [783], [782]],[[], [], [], []]⟩,[840],[839],[841],[842],[844, 845, 846, 847, 849, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[844, 845, 846, 847, 849, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872],[841, 842, 844, 845]⟩
def s2Step26FrontBank : WindowBank := ⟨s2Step26EntryFRow,s2Step26EntryGRow,s2Step26EntryFvRow,s2Step26EntryGvRow⟩
def s2Step26FrontPair : WindowBank := ⟨s2Step26EntryFOut,s2Step26EntryGOut,s2Step26EntryFvOut,s2Step26EntryGvOut⟩
def s2Step26FrontHead : WindowBank := ⟨s2Step26HeadFOut,s2Step26HeadGOut,s2Step26HeadFvOut,s2Step26HeadGvOut⟩
def s2Step26FrontOut : WindowBank := ⟨s2Step26ExitFOut,s2Step26ExitGOut,s2Step26ExitFvOut,s2Step26ExitGvOut⟩
def s2Step26FrontSigmaArena : Arena := ⟨s2Step26EntryGvAfter.live∪{840},Finset.union_subset s2Step26EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step26Front_sigma : s2Step26EntryGvAfter.checkBorrow 1 [840]=some s2Step26FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step26EntryGvAfter,arenaWires]
  · rfl
theorem s2Step26Front_branch : s2Step26FrontSigmaArena.checkBorrow 1 [839]=some s2Step26HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step26FrontSigmaArena,s2Step26EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step26FrontSigmaArena,s2Step26EntryGvAfter,s2Step26HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step26Front_entry : HmrFrontEntryValid s2Step26EntryFBefore s2Step26FrontBank 255 26 ⟨255,254,27,25⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step26FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step26EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step26EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step26FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step26FrontPlan : HmrSourceFront := ⟨s2Step26EntryGvAfter,s2Step26FrontPair,(growRow 768 s2Step26EntryFFresh ++ (growRow 769 s2Step26EntryGFresh ++ (growRow 770 s2Step26EntryFvFresh ++ (growRow 771 s2Step26EntryGvFresh ++ [])))),s2Step26FrontSigmaArena,[840],s2Step26HeadGBefore,[839],
  s2Step26HeadFvAfter,s2Step26FrontHead,(growRow 769 s2Step26HeadGFresh ++ (growRow 768 s2Step26HeadFFresh ++ (growRow 771 s2Step26HeadGvFresh ++ (growRow 770 s2Step26HeadFvFresh ++ [])))),s2Step26F4Plan,s2Step26CounterDuring,s2Step26CounterWork,s2Step26ExitGvAfter,s2Step26FrontOut,(shrinkRow 769 s2Step26ExitGExtra ++ (shrinkRow 768 s2Step26ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step26ExitGvExtra ++ []))))⟩
theorem s2Step26Front_checked : compileHmrSourceFrontLog s2Step26EntryFBefore s2Step26FrontBank 255 26 ⟨255,254,27,25⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step26FrontLog=some s2Step26FrontPlan := by
  have pairEq : s2Step26FrontPair=⟨s2Step26HeadFRow,s2Step26HeadGRow,s2Step26HeadFvRow,s2Step26HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step26FrontHead=⟨s2Step26ExitFRow,s2Step26ExitGRow,s2Step26ExitFvRow,s2Step26ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step26Add0A=s2Step26FrontHead.f.wires := by decide +kernel
  have gEq : s2Step26Add0B=s2Step26FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step26Add1A=s2Step26FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step26Add1B=s2Step26FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step26EntryFBefore s2Step26FrontBank 255 26 ⟨255,254,27,25⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step26FrontLog s2Step26FrontPlan
  · exact s2Step26Front_entry
  · exact s2Step26EntryBank_checked
  · exact s2Step26Front_sigma
  · rfl
  · exact s2Step26Front_branch
  · rfl
  · simpa only [s2Step26FrontPlan,pairEq] using s2Step26HeadBank_checked
  · simpa only [s2Step26FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step26F4_checked
  · exact s2Step26Counter_checked
  · rfl
  · simpa only [s2Step26FrontPlan,headEq] using s2Step26ExitBank_checked
def s2Step27FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [839], [], [840, 779]],[[785], [781], [841], [842]],[[], [], [], []]⟩,[783],[780],[844],[845],[846, 847, 849, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[846, 847, 849, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875],[844, 845, 846, 847]⟩
def s2Step27FrontBank : WindowBank := ⟨s2Step27EntryFRow,s2Step27EntryGRow,s2Step27EntryFvRow,s2Step27EntryGvRow⟩
def s2Step27FrontPair : WindowBank := ⟨s2Step27EntryFOut,s2Step27EntryGOut,s2Step27EntryFvOut,s2Step27EntryGvOut⟩
def s2Step27FrontHead : WindowBank := ⟨s2Step27HeadFOut,s2Step27HeadGOut,s2Step27HeadFvOut,s2Step27HeadGvOut⟩
def s2Step27FrontOut : WindowBank := ⟨s2Step27ExitFOut,s2Step27ExitGOut,s2Step27ExitFvOut,s2Step27ExitGvOut⟩
def s2Step27FrontSigmaArena : Arena := ⟨s2Step27EntryGvAfter.live∪{783},Finset.union_subset s2Step27EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step27Front_sigma : s2Step27EntryGvAfter.checkBorrow 1 [783]=some s2Step27FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step27EntryGvAfter,arenaWires]
  · rfl
theorem s2Step27Front_branch : s2Step27FrontSigmaArena.checkBorrow 1 [780]=some s2Step27HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step27FrontSigmaArena,s2Step27EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step27FrontSigmaArena,s2Step27EntryGvAfter,s2Step27HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step27Front_entry : HmrFrontEntryValid s2Step27EntryFBefore s2Step27FrontBank 255 27 ⟨254,253,28,26⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step27FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step27EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step27EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step27FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step27FrontPlan : HmrSourceFront := ⟨s2Step27EntryGvAfter,s2Step27FrontPair,(growRow 768 s2Step27EntryFFresh ++ (growRow 769 s2Step27EntryGFresh ++ (growRow 770 s2Step27EntryFvFresh ++ (growRow 771 s2Step27EntryGvFresh ++ [])))),s2Step27FrontSigmaArena,[783],s2Step27HeadGBefore,[780],
  s2Step27HeadFvAfter,s2Step27FrontHead,(growRow 769 s2Step27HeadGFresh ++ (growRow 768 s2Step27HeadFFresh ++ (growRow 771 s2Step27HeadGvFresh ++ (growRow 770 s2Step27HeadFvFresh ++ [])))),s2Step27F4Plan,s2Step27CounterDuring,s2Step27CounterWork,s2Step27ExitGvAfter,s2Step27FrontOut,(shrinkRow 769 s2Step27ExitGExtra ++ (shrinkRow 768 s2Step27ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step27ExitGvExtra ++ []))))⟩
theorem s2Step27Front_checked : compileHmrSourceFrontLog s2Step27EntryFBefore s2Step27FrontBank 255 27 ⟨254,253,28,26⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step27FrontLog=some s2Step27FrontPlan := by
  have pairEq : s2Step27FrontPair=⟨s2Step27HeadFRow,s2Step27HeadGRow,s2Step27HeadFvRow,s2Step27HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step27FrontHead=⟨s2Step27ExitFRow,s2Step27ExitGRow,s2Step27ExitFvRow,s2Step27ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step27Add0A=s2Step27FrontHead.f.wires := by decide +kernel
  have gEq : s2Step27Add0B=s2Step27FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step27Add1A=s2Step27FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step27Add1B=s2Step27FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step27EntryFBefore s2Step27FrontBank 255 27 ⟨254,253,28,26⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step27FrontLog s2Step27FrontPlan
  · exact s2Step27Front_entry
  · exact s2Step27EntryBank_checked
  · exact s2Step27Front_sigma
  · rfl
  · exact s2Step27Front_branch
  · rfl
  · simpa only [s2Step27FrontPlan,pairEq] using s2Step27HeadBank_checked
  · simpa only [s2Step27FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step27F4_checked
  · exact s2Step27Counter_checked
  · rfl
  · simpa only [s2Step27FrontPlan,headEq] using s2Step27ExitBank_checked
def s2Step28FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [780], [], [783, 778]],[[841], [781], [839], [785]],[[], [], [], []]⟩,[787],[779],[844],[845],[846, 847, 849, 851, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[846, 847, 849, 851, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877],[844, 845, 846, 847]⟩
def s2Step28FrontBank : WindowBank := ⟨s2Step28EntryFRow,s2Step28EntryGRow,s2Step28EntryFvRow,s2Step28EntryGvRow⟩
def s2Step28FrontPair : WindowBank := ⟨s2Step28EntryFOut,s2Step28EntryGOut,s2Step28EntryFvOut,s2Step28EntryGvOut⟩
def s2Step28FrontHead : WindowBank := ⟨s2Step28HeadFOut,s2Step28HeadGOut,s2Step28HeadFvOut,s2Step28HeadGvOut⟩
def s2Step28FrontOut : WindowBank := ⟨s2Step28ExitFOut,s2Step28ExitGOut,s2Step28ExitFvOut,s2Step28ExitGvOut⟩
def s2Step28FrontSigmaArena : Arena := ⟨s2Step28EntryGvAfter.live∪{787},Finset.union_subset s2Step28EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step28Front_sigma : s2Step28EntryGvAfter.checkBorrow 1 [787]=some s2Step28FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step28EntryGvAfter,arenaWires]
  · rfl
theorem s2Step28Front_branch : s2Step28FrontSigmaArena.checkBorrow 1 [779]=some s2Step28HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step28FrontSigmaArena,s2Step28EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step28FrontSigmaArena,s2Step28EntryGvAfter,s2Step28HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step28Front_entry : HmrFrontEntryValid s2Step28EntryFBefore s2Step28FrontBank 254 28 ⟨254,253,28,27⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step28FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step28EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step28EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step28FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step28FrontPlan : HmrSourceFront := ⟨s2Step28EntryGvAfter,s2Step28FrontPair,(growRow 768 s2Step28EntryFFresh ++ (growRow 769 s2Step28EntryGFresh ++ (growRow 770 s2Step28EntryFvFresh ++ (growRow 771 s2Step28EntryGvFresh ++ [])))),s2Step28FrontSigmaArena,[787],s2Step28HeadGBefore,[779],
  s2Step28HeadFvAfter,s2Step28FrontHead,(growRow 769 s2Step28HeadGFresh ++ (growRow 768 s2Step28HeadFFresh ++ (growRow 771 s2Step28HeadGvFresh ++ (growRow 770 s2Step28HeadFvFresh ++ [])))),s2Step28F4Plan,s2Step28CounterDuring,s2Step28CounterWork,s2Step28ExitGvAfter,s2Step28FrontOut,(shrinkRow 769 s2Step28ExitGExtra ++ (shrinkRow 768 s2Step28ExitFExtra ++ (shrinkRow 770 s2Step28ExitFvExtra ++ (shrinkRow 771 s2Step28ExitGvExtra ++ []))))⟩
theorem s2Step28Front_checked : compileHmrSourceFrontLog s2Step28EntryFBefore s2Step28FrontBank 254 28 ⟨254,253,28,27⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step28FrontLog=some s2Step28FrontPlan := by
  have pairEq : s2Step28FrontPair=⟨s2Step28HeadFRow,s2Step28HeadGRow,s2Step28HeadFvRow,s2Step28HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step28FrontHead=⟨s2Step28ExitFRow,s2Step28ExitGRow,s2Step28ExitFvRow,s2Step28ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step28Add0A=s2Step28FrontHead.f.wires := by decide +kernel
  have gEq : s2Step28Add0B=s2Step28FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step28Add1A=s2Step28FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step28Add1B=s2Step28FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step28EntryFBefore s2Step28FrontBank 254 28 ⟨254,253,28,27⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step28FrontLog s2Step28FrontPlan
  · exact s2Step28Front_entry
  · exact s2Step28EntryBank_checked
  · exact s2Step28Front_sigma
  · rfl
  · exact s2Step28Front_branch
  · rfl
  · simpa only [s2Step28FrontPlan,pairEq] using s2Step28HeadBank_checked
  · simpa only [s2Step28FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step28F4_checked
  · exact s2Step28Counter_checked
  · rfl
  · simpa only [s2Step28FrontPlan,headEq] using s2Step28ExitBank_checked
def s2Step29FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [779], [], [787]],[[785], [781], [780], [841]],[[], [], [], []]⟩,[778],[839],[844],[845],[846, 847, 849, 851, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[846, 847, 849, 851, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877],[844, 845, 846, 847]⟩
def s2Step29FrontBank : WindowBank := ⟨s2Step29EntryFRow,s2Step29EntryGRow,s2Step29EntryFvRow,s2Step29EntryGvRow⟩
def s2Step29FrontPair : WindowBank := ⟨s2Step29EntryFOut,s2Step29EntryGOut,s2Step29EntryFvOut,s2Step29EntryGvOut⟩
def s2Step29FrontHead : WindowBank := ⟨s2Step29HeadFOut,s2Step29HeadGOut,s2Step29HeadFvOut,s2Step29HeadGvOut⟩
def s2Step29FrontOut : WindowBank := ⟨s2Step29ExitFOut,s2Step29ExitGOut,s2Step29ExitFvOut,s2Step29ExitGvOut⟩
def s2Step29FrontSigmaArena : Arena := ⟨s2Step29EntryGvAfter.live∪{778},Finset.union_subset s2Step29EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step29Front_sigma : s2Step29EntryGvAfter.checkBorrow 1 [778]=some s2Step29FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step29EntryGvAfter,arenaWires]
  · rfl
theorem s2Step29Front_branch : s2Step29FrontSigmaArena.checkBorrow 1 [839]=some s2Step29HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step29FrontSigmaArena,s2Step29EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step29FrontSigmaArena,s2Step29EntryGvAfter,s2Step29HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step29Front_entry : HmrFrontEntryValid s2Step29EntryFBefore s2Step29FrontBank 254 28 ⟨253,252,29,27⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step29FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step29EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step29EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step29FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step29FrontPlan : HmrSourceFront := ⟨s2Step29EntryGvAfter,s2Step29FrontPair,(growRow 768 s2Step29EntryFFresh ++ (growRow 769 s2Step29EntryGFresh ++ (growRow 770 s2Step29EntryFvFresh ++ (growRow 771 s2Step29EntryGvFresh ++ [])))),s2Step29FrontSigmaArena,[778],s2Step29HeadGBefore,[839],
  s2Step29HeadFvAfter,s2Step29FrontHead,(growRow 769 s2Step29HeadGFresh ++ (growRow 768 s2Step29HeadFFresh ++ (growRow 771 s2Step29HeadGvFresh ++ (growRow 770 s2Step29HeadFvFresh ++ [])))),s2Step29F4Plan,s2Step29CounterDuring,s2Step29CounterWork,s2Step29ExitGvAfter,s2Step29FrontOut,(shrinkRow 769 s2Step29ExitGExtra ++ (shrinkRow 768 s2Step29ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step29ExitGvExtra ++ []))))⟩
theorem s2Step29Front_checked : compileHmrSourceFrontLog s2Step29EntryFBefore s2Step29FrontBank 254 28 ⟨253,252,29,27⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step29FrontLog=some s2Step29FrontPlan := by
  have pairEq : s2Step29FrontPair=⟨s2Step29HeadFRow,s2Step29HeadGRow,s2Step29HeadFvRow,s2Step29HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step29FrontHead=⟨s2Step29ExitFRow,s2Step29ExitGRow,s2Step29ExitFvRow,s2Step29ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step29Add0A=s2Step29FrontHead.f.wires := by decide +kernel
  have gEq : s2Step29Add0B=s2Step29FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step29Add1A=s2Step29FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step29Add1B=s2Step29FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step29EntryFBefore s2Step29FrontBank 254 28 ⟨253,252,29,27⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step29FrontLog s2Step29FrontPlan
  · exact s2Step29Front_entry
  · exact s2Step29EntryBank_checked
  · exact s2Step29Front_sigma
  · rfl
  · exact s2Step29Front_branch
  · rfl
  · simpa only [s2Step29FrontPlan,pairEq] using s2Step29HeadBank_checked
  · simpa only [s2Step29FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step29F4_checked
  · exact s2Step29Counter_checked
  · rfl
  · simpa only [s2Step29FrontPlan,headEq] using s2Step29ExitBank_checked
def s2Step30FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [839], [], [778, 786]],[[780], [781], [779], [785]],[[], [], [], []]⟩,[789],[787],[844],[845],[846, 847, 849, 851, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[846, 847, 849, 851, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879],[844, 845, 846, 847]⟩
def s2Step30FrontBank : WindowBank := ⟨s2Step30EntryFRow,s2Step30EntryGRow,s2Step30EntryFvRow,s2Step30EntryGvRow⟩
def s2Step30FrontPair : WindowBank := ⟨s2Step30EntryFOut,s2Step30EntryGOut,s2Step30EntryFvOut,s2Step30EntryGvOut⟩
def s2Step30FrontHead : WindowBank := ⟨s2Step30HeadFOut,s2Step30HeadGOut,s2Step30HeadFvOut,s2Step30HeadGvOut⟩
def s2Step30FrontOut : WindowBank := ⟨s2Step30ExitFOut,s2Step30ExitGOut,s2Step30ExitFvOut,s2Step30ExitGvOut⟩
def s2Step30FrontSigmaArena : Arena := ⟨s2Step30EntryGvAfter.live∪{789},Finset.union_subset s2Step30EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step30Front_sigma : s2Step30EntryGvAfter.checkBorrow 1 [789]=some s2Step30FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step30EntryGvAfter,arenaWires]
  · rfl
theorem s2Step30Front_branch : s2Step30FrontSigmaArena.checkBorrow 1 [787]=some s2Step30HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step30FrontSigmaArena,s2Step30EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step30FrontSigmaArena,s2Step30EntryGvAfter,s2Step30HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step30Front_entry : HmrFrontEntryValid s2Step30EntryFBefore s2Step30FrontBank 253 29 ⟨253,252,29,28⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step30FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step30EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step30EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (782≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step30FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step30FrontPlan : HmrSourceFront := ⟨s2Step30EntryGvAfter,s2Step30FrontPair,(growRow 768 s2Step30EntryFFresh ++ (growRow 769 s2Step30EntryGFresh ++ (growRow 770 s2Step30EntryFvFresh ++ (growRow 771 s2Step30EntryGvFresh ++ [])))),s2Step30FrontSigmaArena,[789],s2Step30HeadGBefore,[787],
  s2Step30HeadFvAfter,s2Step30FrontHead,(growRow 769 s2Step30HeadGFresh ++ (growRow 768 s2Step30HeadFFresh ++ (growRow 771 s2Step30HeadGvFresh ++ (growRow 770 s2Step30HeadFvFresh ++ [])))),s2Step30F4Plan,s2Step30CounterDuring,s2Step30CounterWork,s2Step30ExitGvAfter,s2Step30FrontOut,(shrinkRow 769 s2Step30ExitGExtra ++ (shrinkRow 768 s2Step30ExitFExtra ++ (shrinkRow 770 s2Step30ExitFvExtra ++ (shrinkRow 771 s2Step30ExitGvExtra ++ []))))⟩
theorem s2Step30Front_checked : compileHmrSourceFrontLog s2Step30EntryFBefore s2Step30FrontBank 253 29 ⟨253,252,29,28⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step30FrontLog=some s2Step30FrontPlan := by
  have pairEq : s2Step30FrontPair=⟨s2Step30HeadFRow,s2Step30HeadGRow,s2Step30HeadFvRow,s2Step30HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step30FrontHead=⟨s2Step30ExitFRow,s2Step30ExitGRow,s2Step30ExitFvRow,s2Step30ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step30Add0A=s2Step30FrontHead.f.wires := by decide +kernel
  have gEq : s2Step30Add0B=s2Step30FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step30Add1A=s2Step30FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step30Add1B=s2Step30FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step30EntryFBefore s2Step30FrontBank 253 29 ⟨253,252,29,28⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step30FrontLog s2Step30FrontPlan
  · exact s2Step30Front_entry
  · exact s2Step30EntryBank_checked
  · exact s2Step30Front_sigma
  · rfl
  · exact s2Step30Front_branch
  · rfl
  · simpa only [s2Step30FrontPlan,pairEq] using s2Step30HeadBank_checked
  · simpa only [s2Step30FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step30F4_checked
  · exact s2Step30Counter_checked
  · rfl
  · simpa only [s2Step30FrontPlan,headEq] using s2Step30ExitBank_checked
def s2Step31FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [787], [], [789]],[[785], [781], [839], [780]],[[], [], [], []]⟩,[786],[779],[844],[845],[846, 847, 849, 851, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[846, 847, 849, 851, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879],[844, 845, 846, 847]⟩
def s2Step31FrontBank : WindowBank := ⟨s2Step31EntryFRow,s2Step31EntryGRow,s2Step31EntryFvRow,s2Step31EntryGvRow⟩
def s2Step31FrontPair : WindowBank := ⟨s2Step31EntryFOut,s2Step31EntryGOut,s2Step31EntryFvOut,s2Step31EntryGvOut⟩
def s2Step31FrontHead : WindowBank := ⟨s2Step31HeadFOut,s2Step31HeadGOut,s2Step31HeadFvOut,s2Step31HeadGvOut⟩
def s2Step31FrontOut : WindowBank := ⟨s2Step31ExitFOut,s2Step31ExitGOut,s2Step31ExitFvOut,s2Step31ExitGvOut⟩
def s2Step31FrontSigmaArena : Arena := ⟨s2Step31EntryGvAfter.live∪{786},Finset.union_subset s2Step31EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step31Front_sigma : s2Step31EntryGvAfter.checkBorrow 1 [786]=some s2Step31FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step31EntryGvAfter,arenaWires]
  · rfl
theorem s2Step31Front_branch : s2Step31FrontSigmaArena.checkBorrow 1 [779]=some s2Step31HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step31FrontSigmaArena,s2Step31EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step31FrontSigmaArena,s2Step31EntryGvAfter,s2Step31HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step31Front_entry : HmrFrontEntryValid s2Step31EntryFBefore s2Step31FrontBank 253 29 ⟨253,251,29,28⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step31FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step31EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step31EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step31FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step31FrontPlan : HmrSourceFront := ⟨s2Step31EntryGvAfter,s2Step31FrontPair,(growRow 768 s2Step31EntryFFresh ++ (growRow 769 s2Step31EntryGFresh ++ (growRow 770 s2Step31EntryFvFresh ++ (growRow 771 s2Step31EntryGvFresh ++ [])))),s2Step31FrontSigmaArena,[786],s2Step31HeadGBefore,[779],
  s2Step31HeadFvAfter,s2Step31FrontHead,(growRow 769 s2Step31HeadGFresh ++ (growRow 768 s2Step31HeadFFresh ++ (growRow 771 s2Step31HeadGvFresh ++ (growRow 770 s2Step31HeadFvFresh ++ [])))),s2Step31F4Plan,s2Step31CounterDuring,s2Step31CounterWork,s2Step31ExitGvAfter,s2Step31FrontOut,(shrinkRow 769 s2Step31ExitGExtra ++ (shrinkRow 768 s2Step31ExitFExtra ++ (shrinkRow 770 s2Step31ExitFvExtra ++ (shrinkRow 771 s2Step31ExitGvExtra ++ []))))⟩
theorem s2Step31Front_checked : compileHmrSourceFrontLog s2Step31EntryFBefore s2Step31FrontBank 253 29 ⟨253,251,29,28⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step31FrontLog=some s2Step31FrontPlan := by
  have pairEq : s2Step31FrontPair=⟨s2Step31HeadFRow,s2Step31HeadGRow,s2Step31HeadFvRow,s2Step31HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step31FrontHead=⟨s2Step31ExitFRow,s2Step31ExitGRow,s2Step31ExitFvRow,s2Step31ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step31Add0A=s2Step31FrontHead.f.wires := by decide +kernel
  have gEq : s2Step31Add0B=s2Step31FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step31Add1A=s2Step31FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step31Add1B=s2Step31FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step31EntryFBefore s2Step31FrontBank 253 29 ⟨253,251,29,28⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step31FrontLog s2Step31FrontPlan
  · exact s2Step31Front_entry
  · exact s2Step31EntryBank_checked
  · exact s2Step31Front_sigma
  · rfl
  · exact s2Step31Front_branch
  · rfl
  · simpa only [s2Step31FrontPlan,pairEq] using s2Step31HeadBank_checked
  · simpa only [s2Step31FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step31F4_checked
  · exact s2Step31Counter_checked
  · rfl
  · simpa only [s2Step31FrontPlan,headEq] using s2Step31ExitBank_checked

end ECDSAAdd.Arithmetic.Paper935
