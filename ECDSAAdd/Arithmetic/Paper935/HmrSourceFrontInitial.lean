import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryBank
import ECDSAAdd.Arithmetic.Paper935.HmrSourceExitBank
import ECDSAAdd.Arithmetic.Paper935.HmrSourceF4Parts
import ECDSAAdd.Arithmetic.Paper935.HmrSourceCounterParts
import ECDSAAdd.Arithmetic.Paper935.HmrFrontComposition
namespace ECDSAAdd.Arithmetic.Paper935
def s2Step0FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[782], [783], [784], [785]],[[], [], [], []]⟩,[780],[781],[786],[787],[788, 789, 790, 791, 792, 793, 794, 795, 796, 797, 798, 799, 800, 801, 802, 803, 804, 805, 806, 807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[788, 789],[786, 787, 788, 789]⟩
def s2Step0FrontBank : WindowBank := ⟨s2Step0EntryFRow,s2Step0EntryGRow,s2Step0EntryFvRow,s2Step0EntryGvRow⟩
def s2Step0FrontPair : WindowBank := ⟨s2Step0EntryFOut,s2Step0EntryGOut,s2Step0EntryFvOut,s2Step0EntryGvOut⟩
def s2Step0FrontHead : WindowBank := ⟨s2Step0HeadFOut,s2Step0HeadGOut,s2Step0HeadFvOut,s2Step0HeadGvOut⟩
def s2Step0FrontOut : WindowBank := ⟨s2Step0ExitFOut,s2Step0ExitGOut,s2Step0ExitFvOut,s2Step0ExitGvOut⟩
def s2Step0FrontSigmaArena : Arena := ⟨s2Step0EntryGvAfter.live∪{780},Finset.union_subset s2Step0EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step0Front_sigma : s2Step0EntryGvAfter.checkBorrow 1 [780]=some s2Step0FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step0EntryGvAfter,arenaWires]
  · rfl
theorem s2Step0Front_branch : s2Step0FrontSigmaArena.checkBorrow 1 [781]=some s2Step0HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step0FrontSigmaArena,s2Step0EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step0FrontSigmaArena,s2Step0EntryGvAfter,s2Step0HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step0Front_entry : HmrFrontEntryValid s2Step0EntryFBefore s2Step0FrontBank 256 1 ⟨256,255,2,1⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step0FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step0EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step0EntryFBefore (fun q => (0≤q ∧ q<780)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step0FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step0FrontPlan : HmrSourceFront := ⟨s2Step0EntryGvAfter,s2Step0FrontPair,(growRow 768 s2Step0EntryFFresh ++ (growRow 769 s2Step0EntryGFresh ++ (growRow 770 s2Step0EntryFvFresh ++ (growRow 771 s2Step0EntryGvFresh ++ [])))),s2Step0FrontSigmaArena,[780],s2Step0HeadGBefore,[781],
  s2Step0HeadFvAfter,s2Step0FrontHead,(growRow 769 s2Step0HeadGFresh ++ (growRow 768 s2Step0HeadFFresh ++ (growRow 771 s2Step0HeadGvFresh ++ (growRow 770 s2Step0HeadFvFresh ++ [])))),s2Step0F4Plan,s2Step0CounterDuring,s2Step0CounterWork,s2Step0ExitGvAfter,s2Step0FrontOut,(shrinkRow 769 s2Step0ExitGExtra ++ (shrinkRow 768 s2Step0ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step0ExitGvExtra ++ []))))⟩
theorem s2Step0Front_checked : compileHmrSourceFrontLog s2Step0EntryFBefore s2Step0FrontBank 256 1 ⟨256,255,2,1⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step0FrontLog=some s2Step0FrontPlan := by
  have pairEq : s2Step0FrontPair=⟨s2Step0HeadFRow,s2Step0HeadGRow,s2Step0HeadFvRow,s2Step0HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step0FrontHead=⟨s2Step0ExitFRow,s2Step0ExitGRow,s2Step0ExitFvRow,s2Step0ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step0Add0A=s2Step0FrontHead.f.wires := by decide +kernel
  have gEq : s2Step0Add0B=s2Step0FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step0Add1A=s2Step0FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step0Add1B=s2Step0FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step0EntryFBefore s2Step0FrontBank 256 1 ⟨256,255,2,1⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step0FrontLog s2Step0FrontPlan
  · exact s2Step0Front_entry
  · exact s2Step0EntryBank_checked
  · exact s2Step0Front_sigma
  · rfl
  · exact s2Step0Front_branch
  · rfl
  · simpa only [s2Step0FrontPlan,pairEq] using s2Step0HeadBank_checked
  · simpa only [s2Step0FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step0F4_checked
  · exact s2Step0Counter_checked
  · rfl
  · simpa only [s2Step0FrontPlan,headEq] using s2Step0ExitBank_checked
def s2Step1FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [781], [], [780]],[[783], [782], [786], [787]],[[], [], [], []]⟩,[778],[784],[788],[789],[790, 791, 792, 793, 794, 796, 797, 798, 799, 800, 801, 802, 803, 804, 805, 806, 807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[790, 791, 792],[788, 789, 790, 791]⟩
def s2Step1FrontBank : WindowBank := ⟨s2Step1EntryFRow,s2Step1EntryGRow,s2Step1EntryFvRow,s2Step1EntryGvRow⟩
def s2Step1FrontPair : WindowBank := ⟨s2Step1EntryFOut,s2Step1EntryGOut,s2Step1EntryFvOut,s2Step1EntryGvOut⟩
def s2Step1FrontHead : WindowBank := ⟨s2Step1HeadFOut,s2Step1HeadGOut,s2Step1HeadFvOut,s2Step1HeadGvOut⟩
def s2Step1FrontOut : WindowBank := ⟨s2Step1ExitFOut,s2Step1ExitGOut,s2Step1ExitFvOut,s2Step1ExitGvOut⟩
def s2Step1FrontSigmaArena : Arena := ⟨s2Step1EntryGvAfter.live∪{778},Finset.union_subset s2Step1EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step1Front_sigma : s2Step1EntryGvAfter.checkBorrow 1 [778]=some s2Step1FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step1EntryGvAfter,arenaWires]
  · rfl
theorem s2Step1Front_branch : s2Step1FrontSigmaArena.checkBorrow 1 [784]=some s2Step1HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step1FrontSigmaArena,s2Step1EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step1FrontSigmaArena,s2Step1EntryGvAfter,s2Step1HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step1Front_entry : HmrFrontEntryValid s2Step1EntryFBefore s2Step1FrontBank 256 2 ⟨256,255,3,1⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step1FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step1EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step1EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (785≤q ∧ q<786) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step1FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step1FrontPlan : HmrSourceFront := ⟨s2Step1EntryGvAfter,s2Step1FrontPair,(growRow 768 s2Step1EntryFFresh ++ (growRow 769 s2Step1EntryGFresh ++ (growRow 770 s2Step1EntryFvFresh ++ (growRow 771 s2Step1EntryGvFresh ++ [])))),s2Step1FrontSigmaArena,[778],s2Step1HeadGBefore,[784],
  s2Step1HeadFvAfter,s2Step1FrontHead,(growRow 769 s2Step1HeadGFresh ++ (growRow 768 s2Step1HeadFFresh ++ (growRow 771 s2Step1HeadGvFresh ++ (growRow 770 s2Step1HeadFvFresh ++ [])))),s2Step1F4Plan,s2Step1CounterDuring,s2Step1CounterWork,s2Step1ExitGvAfter,s2Step1FrontOut,(shrinkRow 769 s2Step1ExitGExtra ++ (shrinkRow 768 s2Step1ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step1ExitGvExtra ++ []))))⟩
theorem s2Step1Front_checked : compileHmrSourceFrontLog s2Step1EntryFBefore s2Step1FrontBank 256 2 ⟨256,255,3,1⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step1FrontLog=some s2Step1FrontPlan := by
  have pairEq : s2Step1FrontPair=⟨s2Step1HeadFRow,s2Step1HeadGRow,s2Step1HeadFvRow,s2Step1HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step1FrontHead=⟨s2Step1ExitFRow,s2Step1ExitGRow,s2Step1ExitFvRow,s2Step1ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step1Add0A=s2Step1FrontHead.f.wires := by decide +kernel
  have gEq : s2Step1Add0B=s2Step1FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step1Add1A=s2Step1FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step1Add1B=s2Step1FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step1EntryFBefore s2Step1FrontBank 256 2 ⟨256,255,3,1⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step1FrontLog s2Step1FrontPlan
  · exact s2Step1Front_entry
  · exact s2Step1EntryBank_checked
  · exact s2Step1Front_sigma
  · rfl
  · exact s2Step1Front_branch
  · rfl
  · simpa only [s2Step1FrontPlan,pairEq] using s2Step1HeadBank_checked
  · simpa only [s2Step1FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step1F4_checked
  · exact s2Step1Counter_checked
  · rfl
  · simpa only [s2Step1FrontPlan,headEq] using s2Step1ExitBank_checked
def s2Step498FrontLog : HmrFrontAllocationLog := ⟨⟨[[901], [], [], []],[[917], [918], [919], [920]],[[], [], [], []]⟩,[879],[916],[921],[922],[923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[921, 922, 923, 924, 925]⟩
def s2Step498FrontBank : WindowBank := ⟨s2Step498EntryFRow,s2Step498EntryGRow,s2Step498EntryFvRow,s2Step498EntryGvRow⟩
def s2Step498FrontPair : WindowBank := ⟨s2Step498EntryFOut,s2Step498EntryGOut,s2Step498EntryFvOut,s2Step498EntryGvOut⟩
def s2Step498FrontHead : WindowBank := ⟨s2Step498HeadFOut,s2Step498HeadGOut,s2Step498HeadFvOut,s2Step498HeadGvOut⟩
def s2Step498FrontOut : WindowBank := ⟨s2Step498ExitFOut,s2Step498ExitGOut,s2Step498ExitFvOut,s2Step498ExitGvOut⟩
def s2Step498FrontSigmaArena : Arena := ⟨s2Step498EntryGvAfter.live∪{879},Finset.union_subset s2Step498EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step498Front_sigma : s2Step498EntryGvAfter.checkBorrow 1 [879]=some s2Step498FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step498EntryGvAfter,arenaWires]
  · rfl
theorem s2Step498Front_branch : s2Step498FrontSigmaArena.checkBorrow 1 [916]=some s2Step498HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step498FrontSigmaArena,s2Step498EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step498FrontSigmaArena,s2Step498EntryGvAfter,s2Step498HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step498Front_entry : HmrFrontEntryValid s2Step498EntryFBefore s2Step498FrontBank 25 266 ⟨24,24,267,266⟩ false 914 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777, 914]++(s2Step498FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777, 914] : List Wire).toFinset⊆s2Step498EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step498EntryFBefore (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<901) ∨ (902≤q ∧ q<916)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777, 914] : List Wire).toFinset (s2Step498FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step498FrontPlan : HmrSourceFront := ⟨s2Step498EntryGvAfter,s2Step498FrontPair,(growRow 768 s2Step498EntryFFresh ++ (growRow 769 s2Step498EntryGFresh ++ (growRow 770 s2Step498EntryFvFresh ++ (growRow 771 s2Step498EntryGvFresh ++ [])))),s2Step498FrontSigmaArena,[879],s2Step498HeadGBefore,[916],
  s2Step498HeadFvAfter,s2Step498FrontHead,(growRow 769 s2Step498HeadGFresh ++ (growRow 768 s2Step498HeadFFresh ++ (growRow 771 s2Step498HeadGvFresh ++ (growRow 770 s2Step498HeadFvFresh ++ [])))),s2Step498F4Plan,s2Step498CounterDuring,s2Step498CounterWork,s2Step498ExitGvAfter,s2Step498FrontOut,(shrinkRow 769 s2Step498ExitGExtra ++ (shrinkRow 768 s2Step498ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step498ExitGvExtra ++ []))))⟩
theorem s2Step498Front_checked : compileHmrSourceFrontLog s2Step498EntryFBefore s2Step498FrontBank 25 266 ⟨24,24,267,266⟩ false 914 [772, 773, 774, 775, 776, 777] s2Step498FrontLog=some s2Step498FrontPlan := by
  have pairEq : s2Step498FrontPair=⟨s2Step498HeadFRow,s2Step498HeadGRow,s2Step498HeadFvRow,s2Step498HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step498FrontHead=⟨s2Step498ExitFRow,s2Step498ExitGRow,s2Step498ExitFvRow,s2Step498ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step498Add0A=s2Step498FrontHead.f.wires := by decide +kernel
  have gEq : s2Step498Add0B=s2Step498FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step498Add1A=s2Step498FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step498Add1B=s2Step498FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step498EntryFBefore s2Step498FrontBank 25 266 ⟨24,24,267,266⟩ false 914 [772, 773, 774, 775, 776, 777] s2Step498FrontLog s2Step498FrontPlan
  · exact s2Step498Front_entry
  · exact s2Step498EntryBank_checked
  · exact s2Step498Front_sigma
  · rfl
  · exact s2Step498Front_branch
  · rfl
  · simpa only [s2Step498FrontPlan,pairEq] using s2Step498HeadBank_checked
  · simpa only [s2Step498FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step498F4_checked
  · exact s2Step498Counter_checked
  · rfl
  · simpa only [s2Step498FrontPlan,headEq] using s2Step498ExitBank_checked
def s6Step0FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[862], [807], [860], [876]],[[], [], [], []]⟩,[887],[813],[874],[793],[927, 802, 875, 779, 868, 857, 907, 895, 858, 908, 845, 890, 805, 873, 796, 863, 856, 823, 865, 880, 789, 864, 818, 828, 892, 870, 822, 882, 780, 833, 872, 888, 886, 778, 838, 883, 814, 821, 869, 843, 831, 854, 830, 898, 848, 852, 841, 839, 794, 850, 911, 881, 853, 867, 786, 910, 877, 855, 803, 922, 799, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[927, 802],[874, 793, 927, 802]⟩
def s6Step0FrontBank : WindowBank := ⟨s6Step0EntryFRow,s6Step0EntryGRow,s6Step0EntryFvRow,s6Step0EntryGvRow⟩
def s6Step0FrontPair : WindowBank := ⟨s6Step0EntryFOut,s6Step0EntryGOut,s6Step0EntryFvOut,s6Step0EntryGvOut⟩
def s6Step0FrontHead : WindowBank := ⟨s6Step0HeadFOut,s6Step0HeadGOut,s6Step0HeadFvOut,s6Step0HeadGvOut⟩
def s6Step0FrontOut : WindowBank := ⟨s6Step0ExitFOut,s6Step0ExitGOut,s6Step0ExitFvOut,s6Step0ExitGvOut⟩
def s6Step0FrontSigmaArena : Arena := ⟨s6Step0EntryGvAfter.live∪{887},Finset.union_subset s6Step0EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step0Front_sigma : s6Step0EntryGvAfter.checkBorrow 1 [887]=some s6Step0FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step0EntryGvAfter,arenaWires]
  · rfl
theorem s6Step0Front_branch : s6Step0FrontSigmaArena.checkBorrow 1 [813]=some s6Step0HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step0FrontSigmaArena,s6Step0EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step0FrontSigmaArena,s6Step0EntryGvAfter,s6Step0HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step0Front_entry : HmrFrontEntryValid s6Step0EntryFBefore s6Step0FrontBank 256 1 ⟨256,255,2,1⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step0FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step0EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step0EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<860)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step0FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step0FrontPlan : HmrSourceFront := ⟨s6Step0EntryGvAfter,s6Step0FrontPair,(growRow 795 s6Step0EntryFFresh ++ (growRow 777 s6Step0EntryGFresh ++ (growRow 776 s6Step0EntryFvFresh ++ (growRow 775 s6Step0EntryGvFresh ++ [])))),s6Step0FrontSigmaArena,[887],s6Step0HeadGBefore,[813],
  s6Step0HeadFvAfter,s6Step0FrontHead,(growRow 777 s6Step0HeadGFresh ++ (growRow 795 s6Step0HeadFFresh ++ (growRow 775 s6Step0HeadGvFresh ++ (growRow 776 s6Step0HeadFvFresh ++ [])))),s6Step0F4Plan,s6Step0CounterDuring,s6Step0CounterWork,s6Step0ExitGvAfter,s6Step0FrontOut,(shrinkRow 777 s6Step0ExitGExtra ++ (shrinkRow 795 s6Step0ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step0ExitGvExtra ++ []))))⟩
theorem s6Step0Front_checked : compileHmrSourceFrontLog s6Step0EntryFBefore s6Step0FrontBank 256 1 ⟨256,255,2,1⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step0FrontLog=some s6Step0FrontPlan := by
  have pairEq : s6Step0FrontPair=⟨s6Step0HeadFRow,s6Step0HeadGRow,s6Step0HeadFvRow,s6Step0HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step0FrontHead=⟨s6Step0ExitFRow,s6Step0ExitGRow,s6Step0ExitFvRow,s6Step0ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step0Add0A=s6Step0FrontHead.f.wires := by decide +kernel
  have gEq : s6Step0Add0B=s6Step0FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step0Add1A=s6Step0FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step0Add1B=s6Step0FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step0EntryFBefore s6Step0FrontBank 256 1 ⟨256,255,2,1⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step0FrontLog s6Step0FrontPlan
  · exact s6Step0Front_entry
  · exact s6Step0EntryBank_checked
  · exact s6Step0Front_sigma
  · rfl
  · exact s6Step0Front_branch
  · rfl
  · simpa only [s6Step0FrontPlan,pairEq] using s6Step0HeadBank_checked
  · simpa only [s6Step0FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step0F4_checked
  · exact s6Step0Counter_checked
  · rfl
  · simpa only [s6Step0FrontPlan,headEq] using s6Step0ExitBank_checked
def s6Step1FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [813], [], [887]],[[807], [862], [874], [793]],[[], [], [], []]⟩,[768],[860],[927],[802],[875, 779, 868, 857, 907, 858, 908, 845, 890, 805, 873, 796, 863, 856, 823, 865, 880, 789, 864, 818, 828, 892, 870, 822, 882, 780, 833, 872, 888, 886, 778, 838, 883, 814, 821, 869, 843, 831, 854, 830, 898, 848, 852, 841, 839, 794, 850, 911, 881, 853, 867, 786, 910, 877, 855, 803, 922, 799, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[875, 779, 868],[927, 802, 875, 779]⟩
def s6Step1FrontBank : WindowBank := ⟨s6Step1EntryFRow,s6Step1EntryGRow,s6Step1EntryFvRow,s6Step1EntryGvRow⟩
def s6Step1FrontPair : WindowBank := ⟨s6Step1EntryFOut,s6Step1EntryGOut,s6Step1EntryFvOut,s6Step1EntryGvOut⟩
def s6Step1FrontHead : WindowBank := ⟨s6Step1HeadFOut,s6Step1HeadGOut,s6Step1HeadFvOut,s6Step1HeadGvOut⟩
def s6Step1FrontOut : WindowBank := ⟨s6Step1ExitFOut,s6Step1ExitGOut,s6Step1ExitFvOut,s6Step1ExitGvOut⟩
def s6Step1FrontSigmaArena : Arena := ⟨s6Step1EntryGvAfter.live∪{768},Finset.union_subset s6Step1EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step1Front_sigma : s6Step1EntryGvAfter.checkBorrow 1 [768]=some s6Step1FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step1EntryGvAfter,arenaWires]
  · rfl
theorem s6Step1Front_branch : s6Step1FrontSigmaArena.checkBorrow 1 [860]=some s6Step1HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step1FrontSigmaArena,s6Step1EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step1FrontSigmaArena,s6Step1EntryGvAfter,s6Step1HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step1Front_entry : HmrFrontEntryValid s6Step1EntryFBefore s6Step1FrontBank 256 2 ⟨256,255,3,1⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step1FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step1EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step1EntryFBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step1FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step1FrontPlan : HmrSourceFront := ⟨s6Step1EntryGvAfter,s6Step1FrontPair,(growRow 795 s6Step1EntryFFresh ++ (growRow 777 s6Step1EntryGFresh ++ (growRow 776 s6Step1EntryFvFresh ++ (growRow 775 s6Step1EntryGvFresh ++ [])))),s6Step1FrontSigmaArena,[768],s6Step1HeadGBefore,[860],
  s6Step1HeadFvAfter,s6Step1FrontHead,(growRow 777 s6Step1HeadGFresh ++ (growRow 795 s6Step1HeadFFresh ++ (growRow 775 s6Step1HeadGvFresh ++ (growRow 776 s6Step1HeadFvFresh ++ [])))),s6Step1F4Plan,s6Step1CounterDuring,s6Step1CounterWork,s6Step1ExitGvAfter,s6Step1FrontOut,(shrinkRow 777 s6Step1ExitGExtra ++ (shrinkRow 795 s6Step1ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step1ExitGvExtra ++ []))))⟩
theorem s6Step1Front_checked : compileHmrSourceFrontLog s6Step1EntryFBefore s6Step1FrontBank 256 2 ⟨256,255,3,1⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step1FrontLog=some s6Step1FrontPlan := by
  have pairEq : s6Step1FrontPair=⟨s6Step1HeadFRow,s6Step1HeadGRow,s6Step1HeadFvRow,s6Step1HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step1FrontHead=⟨s6Step1ExitFRow,s6Step1ExitGRow,s6Step1ExitFvRow,s6Step1ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step1Add0A=s6Step1FrontHead.f.wires := by decide +kernel
  have gEq : s6Step1Add0B=s6Step1FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step1Add1A=s6Step1FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step1Add1B=s6Step1FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step1EntryFBefore s6Step1FrontBank 256 2 ⟨256,255,3,1⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step1FrontLog s6Step1FrontPlan
  · exact s6Step1Front_entry
  · exact s6Step1EntryBank_checked
  · exact s6Step1Front_sigma
  · rfl
  · exact s6Step1Front_branch
  · rfl
  · simpa only [s6Step1FrontPlan,pairEq] using s6Step1HeadBank_checked
  · simpa only [s6Step1FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step1F4_checked
  · exact s6Step1Counter_checked
  · rfl
  · simpa only [s6Step1FrontPlan,headEq] using s6Step1ExitBank_checked
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
  · norm_num [s6Step498EntryGvAfter,arenaWires]
  · rfl
theorem s6Step498Front_branch : s6Step498FrontSigmaArena.checkBorrow 1 [842]=some s6Step498HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step498FrontSigmaArena,s6Step498EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step498FrontSigmaArena,s6Step498EntryGvAfter,s6Step498HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
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
