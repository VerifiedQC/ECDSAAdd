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
def s2Step2FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [784], [], [778, 780]],[[781], [783], [788], [789]],[[], [], [], []]⟩,[786],[782],[790],[791],[792, 793, 794, 796, 797, 798, 799, 800, 801, 802, 803, 804, 805, 806, 807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[792, 793, 794, 796],[790, 791, 792, 793]⟩
def s2Step2FrontBank : WindowBank := ⟨s2Step2EntryFRow,s2Step2EntryGRow,s2Step2EntryFvRow,s2Step2EntryGvRow⟩
def s2Step2FrontPair : WindowBank := ⟨s2Step2EntryFOut,s2Step2EntryGOut,s2Step2EntryFvOut,s2Step2EntryGvOut⟩
def s2Step2FrontHead : WindowBank := ⟨s2Step2HeadFOut,s2Step2HeadGOut,s2Step2HeadFvOut,s2Step2HeadGvOut⟩
def s2Step2FrontOut : WindowBank := ⟨s2Step2ExitFOut,s2Step2ExitGOut,s2Step2ExitFvOut,s2Step2ExitGvOut⟩
def s2Step2FrontSigmaArena : Arena := ⟨s2Step2EntryGvAfter.live∪{786},Finset.union_subset s2Step2EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step2Front_sigma : s2Step2EntryGvAfter.checkBorrow 1 [786]=some s2Step2FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step2EntryGvAfter,arenaWires]
  · rfl
theorem s2Step2Front_branch : s2Step2FrontSigmaArena.checkBorrow 1 [782]=some s2Step2HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step2FrontSigmaArena,s2Step2EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step2FrontSigmaArena,s2Step2EntryGvAfter,s2Step2HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step2Front_entry : HmrFrontEntryValid s2Step2EntryFBefore s2Step2FrontBank 256 3 ⟨256,255,4,2⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step2FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step2EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step2EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step2FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step2FrontPlan : HmrSourceFront := ⟨s2Step2EntryGvAfter,s2Step2FrontPair,(growRow 768 s2Step2EntryFFresh ++ (growRow 769 s2Step2EntryGFresh ++ (growRow 770 s2Step2EntryFvFresh ++ (growRow 771 s2Step2EntryGvFresh ++ [])))),s2Step2FrontSigmaArena,[786],s2Step2HeadGBefore,[782],
  s2Step2HeadFvAfter,s2Step2FrontHead,(growRow 769 s2Step2HeadGFresh ++ (growRow 768 s2Step2HeadFFresh ++ (growRow 771 s2Step2HeadGvFresh ++ (growRow 770 s2Step2HeadFvFresh ++ [])))),s2Step2F4Plan,s2Step2CounterDuring,s2Step2CounterWork,s2Step2ExitGvAfter,s2Step2FrontOut,(shrinkRow 769 s2Step2ExitGExtra ++ (shrinkRow 768 s2Step2ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step2ExitGvExtra ++ []))))⟩
theorem s2Step2Front_checked : compileHmrSourceFrontLog s2Step2EntryFBefore s2Step2FrontBank 256 3 ⟨256,255,4,2⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step2FrontLog=some s2Step2FrontPlan := by
  have pairEq : s2Step2FrontPair=⟨s2Step2HeadFRow,s2Step2HeadGRow,s2Step2HeadFvRow,s2Step2HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step2FrontHead=⟨s2Step2ExitFRow,s2Step2ExitGRow,s2Step2ExitFvRow,s2Step2ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step2Add0A=s2Step2FrontHead.f.wires := by decide +kernel
  have gEq : s2Step2Add0B=s2Step2FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step2Add1A=s2Step2FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step2Add1B=s2Step2FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step2EntryFBefore s2Step2FrontBank 256 3 ⟨256,255,4,2⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step2FrontLog s2Step2FrontPlan
  · exact s2Step2Front_entry
  · exact s2Step2EntryBank_checked
  · exact s2Step2Front_sigma
  · rfl
  · exact s2Step2Front_branch
  · rfl
  · simpa only [s2Step2FrontPlan,pairEq] using s2Step2HeadBank_checked
  · simpa only [s2Step2FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step2F4_checked
  · exact s2Step2Counter_checked
  · rfl
  · simpa only [s2Step2FrontPlan,headEq] using s2Step2ExitBank_checked
def s2Step3FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [782], [], [786, 780]],[[784], [781], [790], [791]],[[], [], [], []]⟩,[788],[783],[792],[793],[794, 796, 797, 798, 799, 800, 801, 802, 803, 804, 805, 806, 807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[794, 796, 797, 798, 799],[792, 793, 794, 796]⟩
def s2Step3FrontBank : WindowBank := ⟨s2Step3EntryFRow,s2Step3EntryGRow,s2Step3EntryFvRow,s2Step3EntryGvRow⟩
def s2Step3FrontPair : WindowBank := ⟨s2Step3EntryFOut,s2Step3EntryGOut,s2Step3EntryFvOut,s2Step3EntryGvOut⟩
def s2Step3FrontHead : WindowBank := ⟨s2Step3HeadFOut,s2Step3HeadGOut,s2Step3HeadFvOut,s2Step3HeadGvOut⟩
def s2Step3FrontOut : WindowBank := ⟨s2Step3ExitFOut,s2Step3ExitGOut,s2Step3ExitFvOut,s2Step3ExitGvOut⟩
def s2Step3FrontSigmaArena : Arena := ⟨s2Step3EntryGvAfter.live∪{788},Finset.union_subset s2Step3EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step3Front_sigma : s2Step3EntryGvAfter.checkBorrow 1 [788]=some s2Step3FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step3EntryGvAfter,arenaWires]
  · rfl
theorem s2Step3Front_branch : s2Step3FrontSigmaArena.checkBorrow 1 [783]=some s2Step3HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step3FrontSigmaArena,s2Step3EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step3FrontSigmaArena,s2Step3EntryGvAfter,s2Step3HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step3Front_entry : HmrFrontEntryValid s2Step3EntryFBefore s2Step3FrontBank 256 4 ⟨256,255,5,3⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step3FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step3EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step3EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step3FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step3FrontPlan : HmrSourceFront := ⟨s2Step3EntryGvAfter,s2Step3FrontPair,(growRow 768 s2Step3EntryFFresh ++ (growRow 769 s2Step3EntryGFresh ++ (growRow 770 s2Step3EntryFvFresh ++ (growRow 771 s2Step3EntryGvFresh ++ [])))),s2Step3FrontSigmaArena,[788],s2Step3HeadGBefore,[783],
  s2Step3HeadFvAfter,s2Step3FrontHead,(growRow 769 s2Step3HeadGFresh ++ (growRow 768 s2Step3HeadFFresh ++ (growRow 771 s2Step3HeadGvFresh ++ (growRow 770 s2Step3HeadFvFresh ++ [])))),s2Step3F4Plan,s2Step3CounterDuring,s2Step3CounterWork,s2Step3ExitGvAfter,s2Step3FrontOut,(shrinkRow 769 s2Step3ExitGExtra ++ (shrinkRow 768 s2Step3ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step3ExitGvExtra ++ []))))⟩
theorem s2Step3Front_checked : compileHmrSourceFrontLog s2Step3EntryFBefore s2Step3FrontBank 256 4 ⟨256,255,5,3⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step3FrontLog=some s2Step3FrontPlan := by
  have pairEq : s2Step3FrontPair=⟨s2Step3HeadFRow,s2Step3HeadGRow,s2Step3HeadFvRow,s2Step3HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step3FrontHead=⟨s2Step3ExitFRow,s2Step3ExitGRow,s2Step3ExitFvRow,s2Step3ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step3Add0A=s2Step3FrontHead.f.wires := by decide +kernel
  have gEq : s2Step3Add0B=s2Step3FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step3Add1A=s2Step3FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step3Add1B=s2Step3FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step3EntryFBefore s2Step3FrontBank 256 4 ⟨256,255,5,3⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step3FrontLog s2Step3FrontPlan
  · exact s2Step3Front_entry
  · exact s2Step3EntryBank_checked
  · exact s2Step3Front_sigma
  · rfl
  · exact s2Step3Front_branch
  · rfl
  · simpa only [s2Step3FrontPlan,pairEq] using s2Step3HeadBank_checked
  · simpa only [s2Step3FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step3F4_checked
  · exact s2Step3Counter_checked
  · rfl
  · simpa only [s2Step3FrontPlan,headEq] using s2Step3ExitBank_checked
def s2Step4FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [783], [], [788, 780]],[[782], [784], [792], [793]],[[], [], [], []]⟩,[790],[781],[794],[796],[797, 798, 799, 800, 801, 802, 803, 804, 805, 806, 807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[797, 798, 799, 800, 801, 802],[794, 796, 797, 798]⟩
def s2Step4FrontBank : WindowBank := ⟨s2Step4EntryFRow,s2Step4EntryGRow,s2Step4EntryFvRow,s2Step4EntryGvRow⟩
def s2Step4FrontPair : WindowBank := ⟨s2Step4EntryFOut,s2Step4EntryGOut,s2Step4EntryFvOut,s2Step4EntryGvOut⟩
def s2Step4FrontHead : WindowBank := ⟨s2Step4HeadFOut,s2Step4HeadGOut,s2Step4HeadFvOut,s2Step4HeadGvOut⟩
def s2Step4FrontOut : WindowBank := ⟨s2Step4ExitFOut,s2Step4ExitGOut,s2Step4ExitFvOut,s2Step4ExitGvOut⟩
def s2Step4FrontSigmaArena : Arena := ⟨s2Step4EntryGvAfter.live∪{790},Finset.union_subset s2Step4EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step4Front_sigma : s2Step4EntryGvAfter.checkBorrow 1 [790]=some s2Step4FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step4EntryGvAfter,arenaWires]
  · rfl
theorem s2Step4Front_branch : s2Step4FrontSigmaArena.checkBorrow 1 [781]=some s2Step4HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step4FrontSigmaArena,s2Step4EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step4FrontSigmaArena,s2Step4EntryGvAfter,s2Step4HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step4Front_entry : HmrFrontEntryValid s2Step4EntryFBefore s2Step4FrontBank 256 5 ⟨256,255,6,4⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step4FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step4EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step4EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step4FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step4FrontPlan : HmrSourceFront := ⟨s2Step4EntryGvAfter,s2Step4FrontPair,(growRow 768 s2Step4EntryFFresh ++ (growRow 769 s2Step4EntryGFresh ++ (growRow 770 s2Step4EntryFvFresh ++ (growRow 771 s2Step4EntryGvFresh ++ [])))),s2Step4FrontSigmaArena,[790],s2Step4HeadGBefore,[781],
  s2Step4HeadFvAfter,s2Step4FrontHead,(growRow 769 s2Step4HeadGFresh ++ (growRow 768 s2Step4HeadFFresh ++ (growRow 771 s2Step4HeadGvFresh ++ (growRow 770 s2Step4HeadFvFresh ++ [])))),s2Step4F4Plan,s2Step4CounterDuring,s2Step4CounterWork,s2Step4ExitGvAfter,s2Step4FrontOut,(shrinkRow 769 s2Step4ExitGExtra ++ (shrinkRow 768 s2Step4ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step4ExitGvExtra ++ []))))⟩
theorem s2Step4Front_checked : compileHmrSourceFrontLog s2Step4EntryFBefore s2Step4FrontBank 256 5 ⟨256,255,6,4⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step4FrontLog=some s2Step4FrontPlan := by
  have pairEq : s2Step4FrontPair=⟨s2Step4HeadFRow,s2Step4HeadGRow,s2Step4HeadFvRow,s2Step4HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step4FrontHead=⟨s2Step4ExitFRow,s2Step4ExitGRow,s2Step4ExitFvRow,s2Step4ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step4Add0A=s2Step4FrontHead.f.wires := by decide +kernel
  have gEq : s2Step4Add0B=s2Step4FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step4Add1A=s2Step4FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step4Add1B=s2Step4FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step4EntryFBefore s2Step4FrontBank 256 5 ⟨256,255,6,4⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step4FrontLog s2Step4FrontPlan
  · exact s2Step4Front_entry
  · exact s2Step4EntryBank_checked
  · exact s2Step4Front_sigma
  · rfl
  · exact s2Step4Front_branch
  · rfl
  · simpa only [s2Step4FrontPlan,pairEq] using s2Step4HeadBank_checked
  · simpa only [s2Step4FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step4F4_checked
  · exact s2Step4Counter_checked
  · rfl
  · simpa only [s2Step4FrontPlan,headEq] using s2Step4ExitBank_checked
def s2Step5FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [781], [], [790, 780]],[[783], [782], [794], [796]],[[], [], [], []]⟩,[792],[784],[797],[798],[799, 800, 801, 802, 803, 804, 805, 806, 807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[799, 800, 801, 802, 803, 804, 805],[797, 798, 799, 800]⟩
def s2Step5FrontBank : WindowBank := ⟨s2Step5EntryFRow,s2Step5EntryGRow,s2Step5EntryFvRow,s2Step5EntryGvRow⟩
def s2Step5FrontPair : WindowBank := ⟨s2Step5EntryFOut,s2Step5EntryGOut,s2Step5EntryFvOut,s2Step5EntryGvOut⟩
def s2Step5FrontHead : WindowBank := ⟨s2Step5HeadFOut,s2Step5HeadGOut,s2Step5HeadFvOut,s2Step5HeadGvOut⟩
def s2Step5FrontOut : WindowBank := ⟨s2Step5ExitFOut,s2Step5ExitGOut,s2Step5ExitFvOut,s2Step5ExitGvOut⟩
def s2Step5FrontSigmaArena : Arena := ⟨s2Step5EntryGvAfter.live∪{792},Finset.union_subset s2Step5EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step5Front_sigma : s2Step5EntryGvAfter.checkBorrow 1 [792]=some s2Step5FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step5EntryGvAfter,arenaWires]
  · rfl
theorem s2Step5Front_branch : s2Step5FrontSigmaArena.checkBorrow 1 [784]=some s2Step5HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step5FrontSigmaArena,s2Step5EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step5FrontSigmaArena,s2Step5EntryGvAfter,s2Step5HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step5Front_entry : HmrFrontEntryValid s2Step5EntryFBefore s2Step5FrontBank 256 6 ⟨256,255,7,5⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step5FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step5EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step5EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step5FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step5FrontPlan : HmrSourceFront := ⟨s2Step5EntryGvAfter,s2Step5FrontPair,(growRow 768 s2Step5EntryFFresh ++ (growRow 769 s2Step5EntryGFresh ++ (growRow 770 s2Step5EntryFvFresh ++ (growRow 771 s2Step5EntryGvFresh ++ [])))),s2Step5FrontSigmaArena,[792],s2Step5HeadGBefore,[784],
  s2Step5HeadFvAfter,s2Step5FrontHead,(growRow 769 s2Step5HeadGFresh ++ (growRow 768 s2Step5HeadFFresh ++ (growRow 771 s2Step5HeadGvFresh ++ (growRow 770 s2Step5HeadFvFresh ++ [])))),s2Step5F4Plan,s2Step5CounterDuring,s2Step5CounterWork,s2Step5ExitGvAfter,s2Step5FrontOut,(shrinkRow 769 s2Step5ExitGExtra ++ (shrinkRow 768 s2Step5ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step5ExitGvExtra ++ []))))⟩
theorem s2Step5Front_checked : compileHmrSourceFrontLog s2Step5EntryFBefore s2Step5FrontBank 256 6 ⟨256,255,7,5⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step5FrontLog=some s2Step5FrontPlan := by
  have pairEq : s2Step5FrontPair=⟨s2Step5HeadFRow,s2Step5HeadGRow,s2Step5HeadFvRow,s2Step5HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step5FrontHead=⟨s2Step5ExitFRow,s2Step5ExitGRow,s2Step5ExitFvRow,s2Step5ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step5Add0A=s2Step5FrontHead.f.wires := by decide +kernel
  have gEq : s2Step5Add0B=s2Step5FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step5Add1A=s2Step5FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step5Add1B=s2Step5FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step5EntryFBefore s2Step5FrontBank 256 6 ⟨256,255,7,5⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step5FrontLog s2Step5FrontPlan
  · exact s2Step5Front_entry
  · exact s2Step5EntryBank_checked
  · exact s2Step5Front_sigma
  · rfl
  · exact s2Step5Front_branch
  · rfl
  · simpa only [s2Step5FrontPlan,pairEq] using s2Step5HeadBank_checked
  · simpa only [s2Step5FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step5F4_checked
  · exact s2Step5Counter_checked
  · rfl
  · simpa only [s2Step5FrontPlan,headEq] using s2Step5ExitBank_checked
def s2Step6FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [784], [], [792, 780]],[[781], [783], [797], [798]],[[], [], [], []]⟩,[794],[782],[799],[800],[801, 802, 803, 804, 805, 806, 807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[801, 802, 803, 804, 805, 806, 807, 808],[799, 800, 801, 802]⟩
def s2Step6FrontBank : WindowBank := ⟨s2Step6EntryFRow,s2Step6EntryGRow,s2Step6EntryFvRow,s2Step6EntryGvRow⟩
def s2Step6FrontPair : WindowBank := ⟨s2Step6EntryFOut,s2Step6EntryGOut,s2Step6EntryFvOut,s2Step6EntryGvOut⟩
def s2Step6FrontHead : WindowBank := ⟨s2Step6HeadFOut,s2Step6HeadGOut,s2Step6HeadFvOut,s2Step6HeadGvOut⟩
def s2Step6FrontOut : WindowBank := ⟨s2Step6ExitFOut,s2Step6ExitGOut,s2Step6ExitFvOut,s2Step6ExitGvOut⟩
def s2Step6FrontSigmaArena : Arena := ⟨s2Step6EntryGvAfter.live∪{794},Finset.union_subset s2Step6EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step6Front_sigma : s2Step6EntryGvAfter.checkBorrow 1 [794]=some s2Step6FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step6EntryGvAfter,arenaWires]
  · rfl
theorem s2Step6Front_branch : s2Step6FrontSigmaArena.checkBorrow 1 [782]=some s2Step6HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step6FrontSigmaArena,s2Step6EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step6FrontSigmaArena,s2Step6EntryGvAfter,s2Step6HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step6Front_entry : HmrFrontEntryValid s2Step6EntryFBefore s2Step6FrontBank 256 7 ⟨256,255,8,6⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step6FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step6EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step6EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step6FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step6FrontPlan : HmrSourceFront := ⟨s2Step6EntryGvAfter,s2Step6FrontPair,(growRow 768 s2Step6EntryFFresh ++ (growRow 769 s2Step6EntryGFresh ++ (growRow 770 s2Step6EntryFvFresh ++ (growRow 771 s2Step6EntryGvFresh ++ [])))),s2Step6FrontSigmaArena,[794],s2Step6HeadGBefore,[782],
  s2Step6HeadFvAfter,s2Step6FrontHead,(growRow 769 s2Step6HeadGFresh ++ (growRow 768 s2Step6HeadFFresh ++ (growRow 771 s2Step6HeadGvFresh ++ (growRow 770 s2Step6HeadFvFresh ++ [])))),s2Step6F4Plan,s2Step6CounterDuring,s2Step6CounterWork,s2Step6ExitGvAfter,s2Step6FrontOut,(shrinkRow 769 s2Step6ExitGExtra ++ (shrinkRow 768 s2Step6ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step6ExitGvExtra ++ []))))⟩
theorem s2Step6Front_checked : compileHmrSourceFrontLog s2Step6EntryFBefore s2Step6FrontBank 256 7 ⟨256,255,8,6⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step6FrontLog=some s2Step6FrontPlan := by
  have pairEq : s2Step6FrontPair=⟨s2Step6HeadFRow,s2Step6HeadGRow,s2Step6HeadFvRow,s2Step6HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step6FrontHead=⟨s2Step6ExitFRow,s2Step6ExitGRow,s2Step6ExitFvRow,s2Step6ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step6Add0A=s2Step6FrontHead.f.wires := by decide +kernel
  have gEq : s2Step6Add0B=s2Step6FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step6Add1A=s2Step6FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step6Add1B=s2Step6FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step6EntryFBefore s2Step6FrontBank 256 7 ⟨256,255,8,6⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step6FrontLog s2Step6FrontPlan
  · exact s2Step6Front_entry
  · exact s2Step6EntryBank_checked
  · exact s2Step6Front_sigma
  · rfl
  · exact s2Step6Front_branch
  · rfl
  · simpa only [s2Step6FrontPlan,pairEq] using s2Step6HeadBank_checked
  · simpa only [s2Step6FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step6F4_checked
  · exact s2Step6Counter_checked
  · rfl
  · simpa only [s2Step6FrontPlan,headEq] using s2Step6ExitBank_checked
def s2Step7FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [782], [], [794, 780]],[[784], [781], [799], [800]],[[], [], [], []]⟩,[797],[783],[801],[802],[803, 804, 805, 806, 807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[803, 804, 805, 806, 807, 808, 809, 810, 811],[801, 802, 803, 804]⟩
def s2Step7FrontBank : WindowBank := ⟨s2Step7EntryFRow,s2Step7EntryGRow,s2Step7EntryFvRow,s2Step7EntryGvRow⟩
def s2Step7FrontPair : WindowBank := ⟨s2Step7EntryFOut,s2Step7EntryGOut,s2Step7EntryFvOut,s2Step7EntryGvOut⟩
def s2Step7FrontHead : WindowBank := ⟨s2Step7HeadFOut,s2Step7HeadGOut,s2Step7HeadFvOut,s2Step7HeadGvOut⟩
def s2Step7FrontOut : WindowBank := ⟨s2Step7ExitFOut,s2Step7ExitGOut,s2Step7ExitFvOut,s2Step7ExitGvOut⟩
def s2Step7FrontSigmaArena : Arena := ⟨s2Step7EntryGvAfter.live∪{797},Finset.union_subset s2Step7EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step7Front_sigma : s2Step7EntryGvAfter.checkBorrow 1 [797]=some s2Step7FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step7EntryGvAfter,arenaWires]
  · rfl
theorem s2Step7Front_branch : s2Step7FrontSigmaArena.checkBorrow 1 [783]=some s2Step7HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step7FrontSigmaArena,s2Step7EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step7FrontSigmaArena,s2Step7EntryGvAfter,s2Step7HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step7Front_entry : HmrFrontEntryValid s2Step7EntryFBefore s2Step7FrontBank 256 8 ⟨256,255,9,7⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step7FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step7EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step7EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (798≤q ∧ q<799)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step7FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step7FrontPlan : HmrSourceFront := ⟨s2Step7EntryGvAfter,s2Step7FrontPair,(growRow 768 s2Step7EntryFFresh ++ (growRow 769 s2Step7EntryGFresh ++ (growRow 770 s2Step7EntryFvFresh ++ (growRow 771 s2Step7EntryGvFresh ++ [])))),s2Step7FrontSigmaArena,[797],s2Step7HeadGBefore,[783],
  s2Step7HeadFvAfter,s2Step7FrontHead,(growRow 769 s2Step7HeadGFresh ++ (growRow 768 s2Step7HeadFFresh ++ (growRow 771 s2Step7HeadGvFresh ++ (growRow 770 s2Step7HeadFvFresh ++ [])))),s2Step7F4Plan,s2Step7CounterDuring,s2Step7CounterWork,s2Step7ExitGvAfter,s2Step7FrontOut,(shrinkRow 769 s2Step7ExitGExtra ++ (shrinkRow 768 s2Step7ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step7ExitGvExtra ++ []))))⟩
theorem s2Step7Front_checked : compileHmrSourceFrontLog s2Step7EntryFBefore s2Step7FrontBank 256 8 ⟨256,255,9,7⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step7FrontLog=some s2Step7FrontPlan := by
  have pairEq : s2Step7FrontPair=⟨s2Step7HeadFRow,s2Step7HeadGRow,s2Step7HeadFvRow,s2Step7HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step7FrontHead=⟨s2Step7ExitFRow,s2Step7ExitGRow,s2Step7ExitFvRow,s2Step7ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step7Add0A=s2Step7FrontHead.f.wires := by decide +kernel
  have gEq : s2Step7Add0B=s2Step7FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step7Add1A=s2Step7FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step7Add1B=s2Step7FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step7EntryFBefore s2Step7FrontBank 256 8 ⟨256,255,9,7⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step7FrontLog s2Step7FrontPlan
  · exact s2Step7Front_entry
  · exact s2Step7EntryBank_checked
  · exact s2Step7Front_sigma
  · rfl
  · exact s2Step7Front_branch
  · rfl
  · simpa only [s2Step7FrontPlan,pairEq] using s2Step7HeadBank_checked
  · simpa only [s2Step7FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step7F4_checked
  · exact s2Step7Counter_checked
  · rfl
  · simpa only [s2Step7FrontPlan,headEq] using s2Step7ExitBank_checked
def s2Step8FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [783], [], [797, 780]],[[782], [784], [801], [802]],[[], [], [], []]⟩,[799],[781],[803],[804],[805, 806, 807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[805, 806, 807, 808, 809, 810, 811, 812, 813, 814],[803, 804, 805, 806]⟩
def s2Step8FrontBank : WindowBank := ⟨s2Step8EntryFRow,s2Step8EntryGRow,s2Step8EntryFvRow,s2Step8EntryGvRow⟩
def s2Step8FrontPair : WindowBank := ⟨s2Step8EntryFOut,s2Step8EntryGOut,s2Step8EntryFvOut,s2Step8EntryGvOut⟩
def s2Step8FrontHead : WindowBank := ⟨s2Step8HeadFOut,s2Step8HeadGOut,s2Step8HeadFvOut,s2Step8HeadGvOut⟩
def s2Step8FrontOut : WindowBank := ⟨s2Step8ExitFOut,s2Step8ExitGOut,s2Step8ExitFvOut,s2Step8ExitGvOut⟩
def s2Step8FrontSigmaArena : Arena := ⟨s2Step8EntryGvAfter.live∪{799},Finset.union_subset s2Step8EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step8Front_sigma : s2Step8EntryGvAfter.checkBorrow 1 [799]=some s2Step8FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step8EntryGvAfter,arenaWires]
  · rfl
theorem s2Step8Front_branch : s2Step8FrontSigmaArena.checkBorrow 1 [781]=some s2Step8HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step8FrontSigmaArena,s2Step8EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step8FrontSigmaArena,s2Step8EntryGvAfter,s2Step8HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step8Front_entry : HmrFrontEntryValid s2Step8EntryFBefore s2Step8FrontBank 256 9 ⟨256,255,10,8⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step8FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step8EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step8EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<801)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step8FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step8FrontPlan : HmrSourceFront := ⟨s2Step8EntryGvAfter,s2Step8FrontPair,(growRow 768 s2Step8EntryFFresh ++ (growRow 769 s2Step8EntryGFresh ++ (growRow 770 s2Step8EntryFvFresh ++ (growRow 771 s2Step8EntryGvFresh ++ [])))),s2Step8FrontSigmaArena,[799],s2Step8HeadGBefore,[781],
  s2Step8HeadFvAfter,s2Step8FrontHead,(growRow 769 s2Step8HeadGFresh ++ (growRow 768 s2Step8HeadFFresh ++ (growRow 771 s2Step8HeadGvFresh ++ (growRow 770 s2Step8HeadFvFresh ++ [])))),s2Step8F4Plan,s2Step8CounterDuring,s2Step8CounterWork,s2Step8ExitGvAfter,s2Step8FrontOut,(shrinkRow 769 s2Step8ExitGExtra ++ (shrinkRow 768 s2Step8ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step8ExitGvExtra ++ []))))⟩
theorem s2Step8Front_checked : compileHmrSourceFrontLog s2Step8EntryFBefore s2Step8FrontBank 256 9 ⟨256,255,10,8⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step8FrontLog=some s2Step8FrontPlan := by
  have pairEq : s2Step8FrontPair=⟨s2Step8HeadFRow,s2Step8HeadGRow,s2Step8HeadFvRow,s2Step8HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step8FrontHead=⟨s2Step8ExitFRow,s2Step8ExitGRow,s2Step8ExitFvRow,s2Step8ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step8Add0A=s2Step8FrontHead.f.wires := by decide +kernel
  have gEq : s2Step8Add0B=s2Step8FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step8Add1A=s2Step8FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step8Add1B=s2Step8FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step8EntryFBefore s2Step8FrontBank 256 9 ⟨256,255,10,8⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step8FrontLog s2Step8FrontPlan
  · exact s2Step8Front_entry
  · exact s2Step8EntryBank_checked
  · exact s2Step8Front_sigma
  · rfl
  · exact s2Step8Front_branch
  · rfl
  · simpa only [s2Step8FrontPlan,pairEq] using s2Step8HeadBank_checked
  · simpa only [s2Step8FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step8F4_checked
  · exact s2Step8Counter_checked
  · rfl
  · simpa only [s2Step8FrontPlan,headEq] using s2Step8ExitBank_checked
def s2Step9FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [781], [], [799, 780]],[[783], [782], [803], [804]],[[], [], [], []]⟩,[801],[784],[805],[806],[807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817],[805, 806, 807, 808]⟩
def s2Step9FrontBank : WindowBank := ⟨s2Step9EntryFRow,s2Step9EntryGRow,s2Step9EntryFvRow,s2Step9EntryGvRow⟩
def s2Step9FrontPair : WindowBank := ⟨s2Step9EntryFOut,s2Step9EntryGOut,s2Step9EntryFvOut,s2Step9EntryGvOut⟩
def s2Step9FrontHead : WindowBank := ⟨s2Step9HeadFOut,s2Step9HeadGOut,s2Step9HeadFvOut,s2Step9HeadGvOut⟩
def s2Step9FrontOut : WindowBank := ⟨s2Step9ExitFOut,s2Step9ExitGOut,s2Step9ExitFvOut,s2Step9ExitGvOut⟩
def s2Step9FrontSigmaArena : Arena := ⟨s2Step9EntryGvAfter.live∪{801},Finset.union_subset s2Step9EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step9Front_sigma : s2Step9EntryGvAfter.checkBorrow 1 [801]=some s2Step9FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step9EntryGvAfter,arenaWires]
  · rfl
theorem s2Step9Front_branch : s2Step9FrontSigmaArena.checkBorrow 1 [784]=some s2Step9HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step9FrontSigmaArena,s2Step9EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step9FrontSigmaArena,s2Step9EntryGvAfter,s2Step9HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step9Front_entry : HmrFrontEntryValid s2Step9EntryFBefore s2Step9FrontBank 256 10 ⟨256,255,11,9⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step9FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step9EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step9EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<799) ∨ (800≤q ∧ q<801) ∨ (802≤q ∧ q<803)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step9FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step9FrontPlan : HmrSourceFront := ⟨s2Step9EntryGvAfter,s2Step9FrontPair,(growRow 768 s2Step9EntryFFresh ++ (growRow 769 s2Step9EntryGFresh ++ (growRow 770 s2Step9EntryFvFresh ++ (growRow 771 s2Step9EntryGvFresh ++ [])))),s2Step9FrontSigmaArena,[801],s2Step9HeadGBefore,[784],
  s2Step9HeadFvAfter,s2Step9FrontHead,(growRow 769 s2Step9HeadGFresh ++ (growRow 768 s2Step9HeadFFresh ++ (growRow 771 s2Step9HeadGvFresh ++ (growRow 770 s2Step9HeadFvFresh ++ [])))),s2Step9F4Plan,s2Step9CounterDuring,s2Step9CounterWork,s2Step9ExitGvAfter,s2Step9FrontOut,(shrinkRow 769 s2Step9ExitGExtra ++ (shrinkRow 768 s2Step9ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step9ExitGvExtra ++ []))))⟩
theorem s2Step9Front_checked : compileHmrSourceFrontLog s2Step9EntryFBefore s2Step9FrontBank 256 10 ⟨256,255,11,9⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step9FrontLog=some s2Step9FrontPlan := by
  have pairEq : s2Step9FrontPair=⟨s2Step9HeadFRow,s2Step9HeadGRow,s2Step9HeadFvRow,s2Step9HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step9FrontHead=⟨s2Step9ExitFRow,s2Step9ExitGRow,s2Step9ExitFvRow,s2Step9ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step9Add0A=s2Step9FrontHead.f.wires := by decide +kernel
  have gEq : s2Step9Add0B=s2Step9FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step9Add1A=s2Step9FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step9Add1B=s2Step9FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step9EntryFBefore s2Step9FrontBank 256 10 ⟨256,255,11,9⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step9FrontLog s2Step9FrontPlan
  · exact s2Step9Front_entry
  · exact s2Step9EntryBank_checked
  · exact s2Step9Front_sigma
  · rfl
  · exact s2Step9Front_branch
  · rfl
  · simpa only [s2Step9FrontPlan,pairEq] using s2Step9HeadBank_checked
  · simpa only [s2Step9FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step9F4_checked
  · exact s2Step9Counter_checked
  · rfl
  · simpa only [s2Step9FrontPlan,headEq] using s2Step9ExitBank_checked
def s2Step10FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [784], [], [801, 780]],[[781], [783], [805], [806]],[[], [], [], []]⟩,[803],[782],[807],[808],[809, 810, 811, 812, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[809, 810, 811, 812, 814, 815, 816, 817, 818, 819, 820, 821],[807, 808, 809, 810]⟩
def s2Step10FrontBank : WindowBank := ⟨s2Step10EntryFRow,s2Step10EntryGRow,s2Step10EntryFvRow,s2Step10EntryGvRow⟩
def s2Step10FrontPair : WindowBank := ⟨s2Step10EntryFOut,s2Step10EntryGOut,s2Step10EntryFvOut,s2Step10EntryGvOut⟩
def s2Step10FrontHead : WindowBank := ⟨s2Step10HeadFOut,s2Step10HeadGOut,s2Step10HeadFvOut,s2Step10HeadGvOut⟩
def s2Step10FrontOut : WindowBank := ⟨s2Step10ExitFOut,s2Step10ExitGOut,s2Step10ExitFvOut,s2Step10ExitGvOut⟩
def s2Step10FrontSigmaArena : Arena := ⟨s2Step10EntryGvAfter.live∪{803},Finset.union_subset s2Step10EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step10Front_sigma : s2Step10EntryGvAfter.checkBorrow 1 [803]=some s2Step10FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step10EntryGvAfter,arenaWires]
  · rfl
theorem s2Step10Front_branch : s2Step10FrontSigmaArena.checkBorrow 1 [782]=some s2Step10HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step10FrontSigmaArena,s2Step10EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step10FrontSigmaArena,s2Step10EntryGvAfter,s2Step10HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step10Front_entry : HmrFrontEntryValid s2Step10EntryFBefore s2Step10FrontBank 256 11 ⟨256,255,12,10⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step10FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step10EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step10EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<801) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (813≤q ∧ q<814)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step10FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step10FrontPlan : HmrSourceFront := ⟨s2Step10EntryGvAfter,s2Step10FrontPair,(growRow 768 s2Step10EntryFFresh ++ (growRow 769 s2Step10EntryGFresh ++ (growRow 770 s2Step10EntryFvFresh ++ (growRow 771 s2Step10EntryGvFresh ++ [])))),s2Step10FrontSigmaArena,[803],s2Step10HeadGBefore,[782],
  s2Step10HeadFvAfter,s2Step10FrontHead,(growRow 769 s2Step10HeadGFresh ++ (growRow 768 s2Step10HeadFFresh ++ (growRow 771 s2Step10HeadGvFresh ++ (growRow 770 s2Step10HeadFvFresh ++ [])))),s2Step10F4Plan,s2Step10CounterDuring,s2Step10CounterWork,s2Step10ExitGvAfter,s2Step10FrontOut,(shrinkRow 769 s2Step10ExitGExtra ++ (shrinkRow 768 s2Step10ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step10ExitGvExtra ++ []))))⟩
theorem s2Step10Front_checked : compileHmrSourceFrontLog s2Step10EntryFBefore s2Step10FrontBank 256 11 ⟨256,255,12,10⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step10FrontLog=some s2Step10FrontPlan := by
  have pairEq : s2Step10FrontPair=⟨s2Step10HeadFRow,s2Step10HeadGRow,s2Step10HeadFvRow,s2Step10HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step10FrontHead=⟨s2Step10ExitFRow,s2Step10ExitGRow,s2Step10ExitFvRow,s2Step10ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step10Add0A=s2Step10FrontHead.f.wires := by decide +kernel
  have gEq : s2Step10Add0B=s2Step10FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step10Add1A=s2Step10FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step10Add1B=s2Step10FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step10EntryFBefore s2Step10FrontBank 256 11 ⟨256,255,12,10⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step10FrontLog s2Step10FrontPlan
  · exact s2Step10Front_entry
  · exact s2Step10EntryBank_checked
  · exact s2Step10Front_sigma
  · rfl
  · exact s2Step10Front_branch
  · rfl
  · simpa only [s2Step10FrontPlan,pairEq] using s2Step10HeadBank_checked
  · simpa only [s2Step10FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step10F4_checked
  · exact s2Step10Counter_checked
  · rfl
  · simpa only [s2Step10FrontPlan,headEq] using s2Step10ExitBank_checked
def s2Step11FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [782], [], [803, 780]],[[784], [781], [807], [808]],[[], [], [], []]⟩,[805],[783],[809],[810],[811, 812, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[811, 812, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824],[809, 810, 811, 812]⟩
def s2Step11FrontBank : WindowBank := ⟨s2Step11EntryFRow,s2Step11EntryGRow,s2Step11EntryFvRow,s2Step11EntryGvRow⟩
def s2Step11FrontPair : WindowBank := ⟨s2Step11EntryFOut,s2Step11EntryGOut,s2Step11EntryFvOut,s2Step11EntryGvOut⟩
def s2Step11FrontHead : WindowBank := ⟨s2Step11HeadFOut,s2Step11HeadGOut,s2Step11HeadFvOut,s2Step11HeadGvOut⟩
def s2Step11FrontOut : WindowBank := ⟨s2Step11ExitFOut,s2Step11ExitGOut,s2Step11ExitFvOut,s2Step11ExitGvOut⟩
def s2Step11FrontSigmaArena : Arena := ⟨s2Step11EntryGvAfter.live∪{805},Finset.union_subset s2Step11EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step11Front_sigma : s2Step11EntryGvAfter.checkBorrow 1 [805]=some s2Step11FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step11EntryGvAfter,arenaWires]
  · rfl
theorem s2Step11Front_branch : s2Step11FrontSigmaArena.checkBorrow 1 [783]=some s2Step11HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step11FrontSigmaArena,s2Step11EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step11FrontSigmaArena,s2Step11EntryGvAfter,s2Step11HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step11Front_entry : HmrFrontEntryValid s2Step11EntryFBefore s2Step11FrontBank 256 12 ⟨256,255,13,11⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step11FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step11EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step11EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (813≤q ∧ q<814)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step11FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step11FrontPlan : HmrSourceFront := ⟨s2Step11EntryGvAfter,s2Step11FrontPair,(growRow 768 s2Step11EntryFFresh ++ (growRow 769 s2Step11EntryGFresh ++ (growRow 770 s2Step11EntryFvFresh ++ (growRow 771 s2Step11EntryGvFresh ++ [])))),s2Step11FrontSigmaArena,[805],s2Step11HeadGBefore,[783],
  s2Step11HeadFvAfter,s2Step11FrontHead,(growRow 769 s2Step11HeadGFresh ++ (growRow 768 s2Step11HeadFFresh ++ (growRow 771 s2Step11HeadGvFresh ++ (growRow 770 s2Step11HeadFvFresh ++ [])))),s2Step11F4Plan,s2Step11CounterDuring,s2Step11CounterWork,s2Step11ExitGvAfter,s2Step11FrontOut,(shrinkRow 769 s2Step11ExitGExtra ++ (shrinkRow 768 s2Step11ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step11ExitGvExtra ++ []))))⟩
theorem s2Step11Front_checked : compileHmrSourceFrontLog s2Step11EntryFBefore s2Step11FrontBank 256 12 ⟨256,255,13,11⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step11FrontLog=some s2Step11FrontPlan := by
  have pairEq : s2Step11FrontPair=⟨s2Step11HeadFRow,s2Step11HeadGRow,s2Step11HeadFvRow,s2Step11HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step11FrontHead=⟨s2Step11ExitFRow,s2Step11ExitGRow,s2Step11ExitFvRow,s2Step11ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step11Add0A=s2Step11FrontHead.f.wires := by decide +kernel
  have gEq : s2Step11Add0B=s2Step11FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step11Add1A=s2Step11FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step11Add1B=s2Step11FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step11EntryFBefore s2Step11FrontBank 256 12 ⟨256,255,13,11⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step11FrontLog s2Step11FrontPlan
  · exact s2Step11Front_entry
  · exact s2Step11EntryBank_checked
  · exact s2Step11Front_sigma
  · rfl
  · exact s2Step11Front_branch
  · rfl
  · simpa only [s2Step11FrontPlan,pairEq] using s2Step11HeadBank_checked
  · simpa only [s2Step11FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step11F4_checked
  · exact s2Step11Counter_checked
  · rfl
  · simpa only [s2Step11FrontPlan,headEq] using s2Step11ExitBank_checked
def s2Step12FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [783], [], [805, 780]],[[782], [784], [809], [810]],[[], [], [], []]⟩,[807],[781],[811],[812],[814, 815, 816, 817, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[814, 815, 816, 817, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828],[811, 812, 814, 815]⟩
def s2Step12FrontBank : WindowBank := ⟨s2Step12EntryFRow,s2Step12EntryGRow,s2Step12EntryFvRow,s2Step12EntryGvRow⟩
def s2Step12FrontPair : WindowBank := ⟨s2Step12EntryFOut,s2Step12EntryGOut,s2Step12EntryFvOut,s2Step12EntryGvOut⟩
def s2Step12FrontHead : WindowBank := ⟨s2Step12HeadFOut,s2Step12HeadGOut,s2Step12HeadFvOut,s2Step12HeadGvOut⟩
def s2Step12FrontOut : WindowBank := ⟨s2Step12ExitFOut,s2Step12ExitGOut,s2Step12ExitFvOut,s2Step12ExitGvOut⟩
def s2Step12FrontSigmaArena : Arena := ⟨s2Step12EntryGvAfter.live∪{807},Finset.union_subset s2Step12EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step12Front_sigma : s2Step12EntryGvAfter.checkBorrow 1 [807]=some s2Step12FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step12EntryGvAfter,arenaWires]
  · rfl
theorem s2Step12Front_branch : s2Step12FrontSigmaArena.checkBorrow 1 [781]=some s2Step12HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step12FrontSigmaArena,s2Step12EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step12FrontSigmaArena,s2Step12EntryGvAfter,s2Step12HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step12Front_entry : HmrFrontEntryValid s2Step12EntryFBefore s2Step12FrontBank 256 13 ⟨256,255,14,12⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step12FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step12EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step12EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step12FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step12FrontPlan : HmrSourceFront := ⟨s2Step12EntryGvAfter,s2Step12FrontPair,(growRow 768 s2Step12EntryFFresh ++ (growRow 769 s2Step12EntryGFresh ++ (growRow 770 s2Step12EntryFvFresh ++ (growRow 771 s2Step12EntryGvFresh ++ [])))),s2Step12FrontSigmaArena,[807],s2Step12HeadGBefore,[781],
  s2Step12HeadFvAfter,s2Step12FrontHead,(growRow 769 s2Step12HeadGFresh ++ (growRow 768 s2Step12HeadFFresh ++ (growRow 771 s2Step12HeadGvFresh ++ (growRow 770 s2Step12HeadFvFresh ++ [])))),s2Step12F4Plan,s2Step12CounterDuring,s2Step12CounterWork,s2Step12ExitGvAfter,s2Step12FrontOut,(shrinkRow 769 s2Step12ExitGExtra ++ (shrinkRow 768 s2Step12ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step12ExitGvExtra ++ []))))⟩
theorem s2Step12Front_checked : compileHmrSourceFrontLog s2Step12EntryFBefore s2Step12FrontBank 256 13 ⟨256,255,14,12⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step12FrontLog=some s2Step12FrontPlan := by
  have pairEq : s2Step12FrontPair=⟨s2Step12HeadFRow,s2Step12HeadGRow,s2Step12HeadFvRow,s2Step12HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step12FrontHead=⟨s2Step12ExitFRow,s2Step12ExitGRow,s2Step12ExitFvRow,s2Step12ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step12Add0A=s2Step12FrontHead.f.wires := by decide +kernel
  have gEq : s2Step12Add0B=s2Step12FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step12Add1A=s2Step12FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step12Add1B=s2Step12FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step12EntryFBefore s2Step12FrontBank 256 13 ⟨256,255,14,12⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step12FrontLog s2Step12FrontPlan
  · exact s2Step12Front_entry
  · exact s2Step12EntryBank_checked
  · exact s2Step12Front_sigma
  · rfl
  · exact s2Step12Front_branch
  · rfl
  · simpa only [s2Step12FrontPlan,pairEq] using s2Step12HeadBank_checked
  · simpa only [s2Step12FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step12F4_checked
  · exact s2Step12Counter_checked
  · rfl
  · simpa only [s2Step12FrontPlan,headEq] using s2Step12ExitBank_checked
def s2Step13FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [781], [], [807, 780]],[[783], [782], [811], [812]],[[], [], [], []]⟩,[809],[784],[814],[815],[816, 817, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[816, 817, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831],[814, 815, 816, 817]⟩
def s2Step13FrontBank : WindowBank := ⟨s2Step13EntryFRow,s2Step13EntryGRow,s2Step13EntryFvRow,s2Step13EntryGvRow⟩
def s2Step13FrontPair : WindowBank := ⟨s2Step13EntryFOut,s2Step13EntryGOut,s2Step13EntryFvOut,s2Step13EntryGvOut⟩
def s2Step13FrontHead : WindowBank := ⟨s2Step13HeadFOut,s2Step13HeadGOut,s2Step13HeadFvOut,s2Step13HeadGvOut⟩
def s2Step13FrontOut : WindowBank := ⟨s2Step13ExitFOut,s2Step13ExitGOut,s2Step13ExitFvOut,s2Step13ExitGvOut⟩
def s2Step13FrontSigmaArena : Arena := ⟨s2Step13EntryGvAfter.live∪{809},Finset.union_subset s2Step13EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step13Front_sigma : s2Step13EntryGvAfter.checkBorrow 1 [809]=some s2Step13FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step13EntryGvAfter,arenaWires]
  · rfl
theorem s2Step13Front_branch : s2Step13FrontSigmaArena.checkBorrow 1 [784]=some s2Step13HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step13FrontSigmaArena,s2Step13EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step13FrontSigmaArena,s2Step13EntryGvAfter,s2Step13HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step13Front_entry : HmrFrontEntryValid s2Step13EntryFBefore s2Step13FrontBank 256 14 ⟨256,255,15,13⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step13FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step13EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step13EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step13FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step13FrontPlan : HmrSourceFront := ⟨s2Step13EntryGvAfter,s2Step13FrontPair,(growRow 768 s2Step13EntryFFresh ++ (growRow 769 s2Step13EntryGFresh ++ (growRow 770 s2Step13EntryFvFresh ++ (growRow 771 s2Step13EntryGvFresh ++ [])))),s2Step13FrontSigmaArena,[809],s2Step13HeadGBefore,[784],
  s2Step13HeadFvAfter,s2Step13FrontHead,(growRow 769 s2Step13HeadGFresh ++ (growRow 768 s2Step13HeadFFresh ++ (growRow 771 s2Step13HeadGvFresh ++ (growRow 770 s2Step13HeadFvFresh ++ [])))),s2Step13F4Plan,s2Step13CounterDuring,s2Step13CounterWork,s2Step13ExitGvAfter,s2Step13FrontOut,(shrinkRow 769 s2Step13ExitGExtra ++ (shrinkRow 768 s2Step13ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step13ExitGvExtra ++ []))))⟩
theorem s2Step13Front_checked : compileHmrSourceFrontLog s2Step13EntryFBefore s2Step13FrontBank 256 14 ⟨256,255,15,13⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step13FrontLog=some s2Step13FrontPlan := by
  have pairEq : s2Step13FrontPair=⟨s2Step13HeadFRow,s2Step13HeadGRow,s2Step13HeadFvRow,s2Step13HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step13FrontHead=⟨s2Step13ExitFRow,s2Step13ExitGRow,s2Step13ExitFvRow,s2Step13ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step13Add0A=s2Step13FrontHead.f.wires := by decide +kernel
  have gEq : s2Step13Add0B=s2Step13FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step13Add1A=s2Step13FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step13Add1B=s2Step13FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step13EntryFBefore s2Step13FrontBank 256 14 ⟨256,255,15,13⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step13FrontLog s2Step13FrontPlan
  · exact s2Step13Front_entry
  · exact s2Step13EntryBank_checked
  · exact s2Step13Front_sigma
  · rfl
  · exact s2Step13Front_branch
  · rfl
  · simpa only [s2Step13FrontPlan,pairEq] using s2Step13HeadBank_checked
  · simpa only [s2Step13FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step13F4_checked
  · exact s2Step13Counter_checked
  · rfl
  · simpa only [s2Step13FrontPlan,headEq] using s2Step13ExitBank_checked
def s2Step14FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [784], [], [809, 780]],[[781], [783], [814], [815]],[[], [], [], []]⟩,[811],[782],[816],[817],[819, 820, 821, 822, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[819, 820, 821, 822, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835],[816, 817, 819, 820]⟩
def s2Step14FrontBank : WindowBank := ⟨s2Step14EntryFRow,s2Step14EntryGRow,s2Step14EntryFvRow,s2Step14EntryGvRow⟩
def s2Step14FrontPair : WindowBank := ⟨s2Step14EntryFOut,s2Step14EntryGOut,s2Step14EntryFvOut,s2Step14EntryGvOut⟩
def s2Step14FrontHead : WindowBank := ⟨s2Step14HeadFOut,s2Step14HeadGOut,s2Step14HeadFvOut,s2Step14HeadGvOut⟩
def s2Step14FrontOut : WindowBank := ⟨s2Step14ExitFOut,s2Step14ExitGOut,s2Step14ExitFvOut,s2Step14ExitGvOut⟩
def s2Step14FrontSigmaArena : Arena := ⟨s2Step14EntryGvAfter.live∪{811},Finset.union_subset s2Step14EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step14Front_sigma : s2Step14EntryGvAfter.checkBorrow 1 [811]=some s2Step14FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step14EntryGvAfter,arenaWires]
  · rfl
theorem s2Step14Front_branch : s2Step14FrontSigmaArena.checkBorrow 1 [782]=some s2Step14HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step14FrontSigmaArena,s2Step14EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step14FrontSigmaArena,s2Step14EntryGvAfter,s2Step14HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step14Front_entry : HmrFrontEntryValid s2Step14EntryFBefore s2Step14FrontBank 256 15 ⟨256,255,16,14⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step14FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step14EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step14EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step14FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step14FrontPlan : HmrSourceFront := ⟨s2Step14EntryGvAfter,s2Step14FrontPair,(growRow 768 s2Step14EntryFFresh ++ (growRow 769 s2Step14EntryGFresh ++ (growRow 770 s2Step14EntryFvFresh ++ (growRow 771 s2Step14EntryGvFresh ++ [])))),s2Step14FrontSigmaArena,[811],s2Step14HeadGBefore,[782],
  s2Step14HeadFvAfter,s2Step14FrontHead,(growRow 769 s2Step14HeadGFresh ++ (growRow 768 s2Step14HeadFFresh ++ (growRow 771 s2Step14HeadGvFresh ++ (growRow 770 s2Step14HeadFvFresh ++ [])))),s2Step14F4Plan,s2Step14CounterDuring,s2Step14CounterWork,s2Step14ExitGvAfter,s2Step14FrontOut,(shrinkRow 769 s2Step14ExitGExtra ++ (shrinkRow 768 s2Step14ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step14ExitGvExtra ++ []))))⟩
theorem s2Step14Front_checked : compileHmrSourceFrontLog s2Step14EntryFBefore s2Step14FrontBank 256 15 ⟨256,255,16,14⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step14FrontLog=some s2Step14FrontPlan := by
  have pairEq : s2Step14FrontPair=⟨s2Step14HeadFRow,s2Step14HeadGRow,s2Step14HeadFvRow,s2Step14HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step14FrontHead=⟨s2Step14ExitFRow,s2Step14ExitGRow,s2Step14ExitFvRow,s2Step14ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step14Add0A=s2Step14FrontHead.f.wires := by decide +kernel
  have gEq : s2Step14Add0B=s2Step14FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step14Add1A=s2Step14FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step14Add1B=s2Step14FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step14EntryFBefore s2Step14FrontBank 256 15 ⟨256,255,16,14⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step14FrontLog s2Step14FrontPlan
  · exact s2Step14Front_entry
  · exact s2Step14EntryBank_checked
  · exact s2Step14Front_sigma
  · rfl
  · exact s2Step14Front_branch
  · rfl
  · simpa only [s2Step14FrontPlan,pairEq] using s2Step14HeadBank_checked
  · simpa only [s2Step14FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step14F4_checked
  · exact s2Step14Counter_checked
  · rfl
  · simpa only [s2Step14FrontPlan,headEq] using s2Step14ExitBank_checked
def s2Step15FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [782], [], [811, 780]],[[784], [781], [816], [817]],[[], [], [], []]⟩,[814],[783],[819],[820],[821, 822, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[821, 822, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838],[819, 820, 821, 822]⟩
def s2Step15FrontBank : WindowBank := ⟨s2Step15EntryFRow,s2Step15EntryGRow,s2Step15EntryFvRow,s2Step15EntryGvRow⟩
def s2Step15FrontPair : WindowBank := ⟨s2Step15EntryFOut,s2Step15EntryGOut,s2Step15EntryFvOut,s2Step15EntryGvOut⟩
def s2Step15FrontHead : WindowBank := ⟨s2Step15HeadFOut,s2Step15HeadGOut,s2Step15HeadFvOut,s2Step15HeadGvOut⟩
def s2Step15FrontOut : WindowBank := ⟨s2Step15ExitFOut,s2Step15ExitGOut,s2Step15ExitFvOut,s2Step15ExitGvOut⟩
def s2Step15FrontSigmaArena : Arena := ⟨s2Step15EntryGvAfter.live∪{814},Finset.union_subset s2Step15EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step15Front_sigma : s2Step15EntryGvAfter.checkBorrow 1 [814]=some s2Step15FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step15EntryGvAfter,arenaWires]
  · rfl
theorem s2Step15Front_branch : s2Step15FrontSigmaArena.checkBorrow 1 [783]=some s2Step15HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step15FrontSigmaArena,s2Step15EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step15FrontSigmaArena,s2Step15EntryGvAfter,s2Step15HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step15Front_entry : HmrFrontEntryValid s2Step15EntryFBefore s2Step15FrontBank 256 16 ⟨256,255,17,15⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step15FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step15EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step15EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step15FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step15FrontPlan : HmrSourceFront := ⟨s2Step15EntryGvAfter,s2Step15FrontPair,(growRow 768 s2Step15EntryFFresh ++ (growRow 769 s2Step15EntryGFresh ++ (growRow 770 s2Step15EntryFvFresh ++ (growRow 771 s2Step15EntryGvFresh ++ [])))),s2Step15FrontSigmaArena,[814],s2Step15HeadGBefore,[783],
  s2Step15HeadFvAfter,s2Step15FrontHead,(growRow 769 s2Step15HeadGFresh ++ (growRow 768 s2Step15HeadFFresh ++ (growRow 771 s2Step15HeadGvFresh ++ (growRow 770 s2Step15HeadFvFresh ++ [])))),s2Step15F4Plan,s2Step15CounterDuring,s2Step15CounterWork,s2Step15ExitGvAfter,s2Step15FrontOut,(shrinkRow 769 s2Step15ExitGExtra ++ (shrinkRow 768 s2Step15ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step15ExitGvExtra ++ []))))⟩
theorem s2Step15Front_checked : compileHmrSourceFrontLog s2Step15EntryFBefore s2Step15FrontBank 256 16 ⟨256,255,17,15⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step15FrontLog=some s2Step15FrontPlan := by
  have pairEq : s2Step15FrontPair=⟨s2Step15HeadFRow,s2Step15HeadGRow,s2Step15HeadFvRow,s2Step15HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step15FrontHead=⟨s2Step15ExitFRow,s2Step15ExitGRow,s2Step15ExitFvRow,s2Step15ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step15Add0A=s2Step15FrontHead.f.wires := by decide +kernel
  have gEq : s2Step15Add0B=s2Step15FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step15Add1A=s2Step15FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step15Add1B=s2Step15FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step15EntryFBefore s2Step15FrontBank 256 16 ⟨256,255,17,15⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step15FrontLog s2Step15FrontPlan
  · exact s2Step15Front_entry
  · exact s2Step15EntryBank_checked
  · exact s2Step15Front_sigma
  · rfl
  · exact s2Step15Front_branch
  · rfl
  · simpa only [s2Step15FrontPlan,pairEq] using s2Step15HeadBank_checked
  · simpa only [s2Step15FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step15F4_checked
  · exact s2Step15Counter_checked
  · rfl
  · simpa only [s2Step15FrontPlan,headEq] using s2Step15ExitBank_checked
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
def s6Step2FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [860], [], [768, 887]],[[813], [807], [927], [802]],[[], [], [], []]⟩,[874],[862],[875],[779],[868, 857, 907, 858, 908, 845, 890, 805, 873, 796, 863, 856, 823, 865, 880, 789, 864, 818, 828, 892, 870, 822, 882, 780, 833, 872, 888, 886, 778, 838, 883, 814, 821, 869, 843, 831, 854, 830, 898, 848, 852, 841, 839, 794, 850, 911, 881, 853, 867, 786, 910, 877, 855, 803, 922, 799, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[868, 857, 907, 858],[875, 779, 868, 857]⟩
def s6Step2FrontBank : WindowBank := ⟨s6Step2EntryFRow,s6Step2EntryGRow,s6Step2EntryFvRow,s6Step2EntryGvRow⟩
def s6Step2FrontPair : WindowBank := ⟨s6Step2EntryFOut,s6Step2EntryGOut,s6Step2EntryFvOut,s6Step2EntryGvOut⟩
def s6Step2FrontHead : WindowBank := ⟨s6Step2HeadFOut,s6Step2HeadGOut,s6Step2HeadFvOut,s6Step2HeadGvOut⟩
def s6Step2FrontOut : WindowBank := ⟨s6Step2ExitFOut,s6Step2ExitGOut,s6Step2ExitFvOut,s6Step2ExitGvOut⟩
def s6Step2FrontSigmaArena : Arena := ⟨s6Step2EntryGvAfter.live∪{874},Finset.union_subset s6Step2EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step2Front_sigma : s6Step2EntryGvAfter.checkBorrow 1 [874]=some s6Step2FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step2EntryGvAfter,arenaWires]
  · rfl
theorem s6Step2Front_branch : s6Step2FrontSigmaArena.checkBorrow 1 [862]=some s6Step2HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step2FrontSigmaArena,s6Step2EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step2FrontSigmaArena,s6Step2EntryGvAfter,s6Step2HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step2Front_entry : HmrFrontEntryValid s6Step2EntryFBefore s6Step2FrontBank 256 3 ⟨256,255,4,2⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step2FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step2EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step2EntryFBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step2FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step2FrontPlan : HmrSourceFront := ⟨s6Step2EntryGvAfter,s6Step2FrontPair,(growRow 795 s6Step2EntryFFresh ++ (growRow 777 s6Step2EntryGFresh ++ (growRow 776 s6Step2EntryFvFresh ++ (growRow 775 s6Step2EntryGvFresh ++ [])))),s6Step2FrontSigmaArena,[874],s6Step2HeadGBefore,[862],
  s6Step2HeadFvAfter,s6Step2FrontHead,(growRow 777 s6Step2HeadGFresh ++ (growRow 795 s6Step2HeadFFresh ++ (growRow 775 s6Step2HeadGvFresh ++ (growRow 776 s6Step2HeadFvFresh ++ [])))),s6Step2F4Plan,s6Step2CounterDuring,s6Step2CounterWork,s6Step2ExitGvAfter,s6Step2FrontOut,(shrinkRow 777 s6Step2ExitGExtra ++ (shrinkRow 795 s6Step2ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step2ExitGvExtra ++ []))))⟩
theorem s6Step2Front_checked : compileHmrSourceFrontLog s6Step2EntryFBefore s6Step2FrontBank 256 3 ⟨256,255,4,2⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step2FrontLog=some s6Step2FrontPlan := by
  have pairEq : s6Step2FrontPair=⟨s6Step2HeadFRow,s6Step2HeadGRow,s6Step2HeadFvRow,s6Step2HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step2FrontHead=⟨s6Step2ExitFRow,s6Step2ExitGRow,s6Step2ExitFvRow,s6Step2ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step2Add0A=s6Step2FrontHead.f.wires := by decide +kernel
  have gEq : s6Step2Add0B=s6Step2FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step2Add1A=s6Step2FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step2Add1B=s6Step2FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step2EntryFBefore s6Step2FrontBank 256 3 ⟨256,255,4,2⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step2FrontLog s6Step2FrontPlan
  · exact s6Step2Front_entry
  · exact s6Step2EntryBank_checked
  · exact s6Step2Front_sigma
  · rfl
  · exact s6Step2Front_branch
  · rfl
  · simpa only [s6Step2FrontPlan,pairEq] using s6Step2HeadBank_checked
  · simpa only [s6Step2FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step2F4_checked
  · exact s6Step2Counter_checked
  · rfl
  · simpa only [s6Step2FrontPlan,headEq] using s6Step2ExitBank_checked
def s6Step3FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [862], [], [874, 887]],[[860], [813], [875], [779]],[[], [], [], []]⟩,[927],[807],[868],[857],[907, 858, 908, 845, 890, 805, 873, 796, 863, 856, 823, 865, 880, 789, 864, 818, 828, 892, 870, 822, 882, 780, 833, 872, 888, 886, 778, 838, 883, 814, 821, 869, 843, 831, 854, 830, 898, 848, 852, 841, 839, 794, 850, 911, 881, 853, 867, 786, 910, 877, 855, 803, 922, 799, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[907, 858, 908, 845, 890],[868, 857, 907, 858]⟩
def s6Step3FrontBank : WindowBank := ⟨s6Step3EntryFRow,s6Step3EntryGRow,s6Step3EntryFvRow,s6Step3EntryGvRow⟩
def s6Step3FrontPair : WindowBank := ⟨s6Step3EntryFOut,s6Step3EntryGOut,s6Step3EntryFvOut,s6Step3EntryGvOut⟩
def s6Step3FrontHead : WindowBank := ⟨s6Step3HeadFOut,s6Step3HeadGOut,s6Step3HeadFvOut,s6Step3HeadGvOut⟩
def s6Step3FrontOut : WindowBank := ⟨s6Step3ExitFOut,s6Step3ExitGOut,s6Step3ExitFvOut,s6Step3ExitGvOut⟩
def s6Step3FrontSigmaArena : Arena := ⟨s6Step3EntryGvAfter.live∪{927},Finset.union_subset s6Step3EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step3Front_sigma : s6Step3EntryGvAfter.checkBorrow 1 [927]=some s6Step3FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step3EntryGvAfter,arenaWires]
  · rfl
theorem s6Step3Front_branch : s6Step3FrontSigmaArena.checkBorrow 1 [807]=some s6Step3HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step3FrontSigmaArena,s6Step3EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step3FrontSigmaArena,s6Step3EntryGvAfter,s6Step3HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step3Front_entry : HmrFrontEntryValid s6Step3EntryFBefore s6Step3FrontBank 256 4 ⟨256,255,5,3⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step3FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step3EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step3EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step3FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step3FrontPlan : HmrSourceFront := ⟨s6Step3EntryGvAfter,s6Step3FrontPair,(growRow 795 s6Step3EntryFFresh ++ (growRow 777 s6Step3EntryGFresh ++ (growRow 776 s6Step3EntryFvFresh ++ (growRow 775 s6Step3EntryGvFresh ++ [])))),s6Step3FrontSigmaArena,[927],s6Step3HeadGBefore,[807],
  s6Step3HeadFvAfter,s6Step3FrontHead,(growRow 777 s6Step3HeadGFresh ++ (growRow 795 s6Step3HeadFFresh ++ (growRow 775 s6Step3HeadGvFresh ++ (growRow 776 s6Step3HeadFvFresh ++ [])))),s6Step3F4Plan,s6Step3CounterDuring,s6Step3CounterWork,s6Step3ExitGvAfter,s6Step3FrontOut,(shrinkRow 777 s6Step3ExitGExtra ++ (shrinkRow 795 s6Step3ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step3ExitGvExtra ++ []))))⟩
theorem s6Step3Front_checked : compileHmrSourceFrontLog s6Step3EntryFBefore s6Step3FrontBank 256 4 ⟨256,255,5,3⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step3FrontLog=some s6Step3FrontPlan := by
  have pairEq : s6Step3FrontPair=⟨s6Step3HeadFRow,s6Step3HeadGRow,s6Step3HeadFvRow,s6Step3HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step3FrontHead=⟨s6Step3ExitFRow,s6Step3ExitGRow,s6Step3ExitFvRow,s6Step3ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step3Add0A=s6Step3FrontHead.f.wires := by decide +kernel
  have gEq : s6Step3Add0B=s6Step3FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step3Add1A=s6Step3FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step3Add1B=s6Step3FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step3EntryFBefore s6Step3FrontBank 256 4 ⟨256,255,5,3⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step3FrontLog s6Step3FrontPlan
  · exact s6Step3Front_entry
  · exact s6Step3EntryBank_checked
  · exact s6Step3Front_sigma
  · rfl
  · exact s6Step3Front_branch
  · rfl
  · simpa only [s6Step3FrontPlan,pairEq] using s6Step3HeadBank_checked
  · simpa only [s6Step3FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step3F4_checked
  · exact s6Step3Counter_checked
  · rfl
  · simpa only [s6Step3FrontPlan,headEq] using s6Step3ExitBank_checked
def s6Step4FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [807], [], [927, 887]],[[862], [860], [868], [857]],[[], [], [], []]⟩,[875],[813],[907],[858],[908, 845, 890, 805, 873, 796, 863, 856, 823, 865, 880, 789, 864, 818, 828, 892, 870, 822, 882, 780, 833, 872, 888, 886, 778, 838, 883, 814, 821, 869, 843, 831, 854, 830, 898, 848, 852, 841, 839, 794, 850, 911, 881, 853, 867, 786, 910, 877, 855, 803, 922, 799, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[908, 845, 890, 805, 873, 796],[907, 858, 908, 845]⟩
def s6Step4FrontBank : WindowBank := ⟨s6Step4EntryFRow,s6Step4EntryGRow,s6Step4EntryFvRow,s6Step4EntryGvRow⟩
def s6Step4FrontPair : WindowBank := ⟨s6Step4EntryFOut,s6Step4EntryGOut,s6Step4EntryFvOut,s6Step4EntryGvOut⟩
def s6Step4FrontHead : WindowBank := ⟨s6Step4HeadFOut,s6Step4HeadGOut,s6Step4HeadFvOut,s6Step4HeadGvOut⟩
def s6Step4FrontOut : WindowBank := ⟨s6Step4ExitFOut,s6Step4ExitGOut,s6Step4ExitFvOut,s6Step4ExitGvOut⟩
def s6Step4FrontSigmaArena : Arena := ⟨s6Step4EntryGvAfter.live∪{875},Finset.union_subset s6Step4EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step4Front_sigma : s6Step4EntryGvAfter.checkBorrow 1 [875]=some s6Step4FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step4EntryGvAfter,arenaWires]
  · rfl
theorem s6Step4Front_branch : s6Step4FrontSigmaArena.checkBorrow 1 [813]=some s6Step4HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step4FrontSigmaArena,s6Step4EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step4FrontSigmaArena,s6Step4EntryGvAfter,s6Step4HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step4Front_entry : HmrFrontEntryValid s6Step4EntryFBefore s6Step4FrontBank 256 5 ⟨256,255,6,4⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step4FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step4EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step4EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step4FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step4FrontPlan : HmrSourceFront := ⟨s6Step4EntryGvAfter,s6Step4FrontPair,(growRow 795 s6Step4EntryFFresh ++ (growRow 777 s6Step4EntryGFresh ++ (growRow 776 s6Step4EntryFvFresh ++ (growRow 775 s6Step4EntryGvFresh ++ [])))),s6Step4FrontSigmaArena,[875],s6Step4HeadGBefore,[813],
  s6Step4HeadFvAfter,s6Step4FrontHead,(growRow 777 s6Step4HeadGFresh ++ (growRow 795 s6Step4HeadFFresh ++ (growRow 775 s6Step4HeadGvFresh ++ (growRow 776 s6Step4HeadFvFresh ++ [])))),s6Step4F4Plan,s6Step4CounterDuring,s6Step4CounterWork,s6Step4ExitGvAfter,s6Step4FrontOut,(shrinkRow 777 s6Step4ExitGExtra ++ (shrinkRow 795 s6Step4ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step4ExitGvExtra ++ []))))⟩
theorem s6Step4Front_checked : compileHmrSourceFrontLog s6Step4EntryFBefore s6Step4FrontBank 256 5 ⟨256,255,6,4⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step4FrontLog=some s6Step4FrontPlan := by
  have pairEq : s6Step4FrontPair=⟨s6Step4HeadFRow,s6Step4HeadGRow,s6Step4HeadFvRow,s6Step4HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step4FrontHead=⟨s6Step4ExitFRow,s6Step4ExitGRow,s6Step4ExitFvRow,s6Step4ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step4Add0A=s6Step4FrontHead.f.wires := by decide +kernel
  have gEq : s6Step4Add0B=s6Step4FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step4Add1A=s6Step4FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step4Add1B=s6Step4FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step4EntryFBefore s6Step4FrontBank 256 5 ⟨256,255,6,4⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step4FrontLog s6Step4FrontPlan
  · exact s6Step4Front_entry
  · exact s6Step4EntryBank_checked
  · exact s6Step4Front_sigma
  · rfl
  · exact s6Step4Front_branch
  · rfl
  · simpa only [s6Step4FrontPlan,pairEq] using s6Step4HeadBank_checked
  · simpa only [s6Step4FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step4F4_checked
  · exact s6Step4Counter_checked
  · rfl
  · simpa only [s6Step4FrontPlan,headEq] using s6Step4ExitBank_checked
def s6Step5FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [813], [], [875, 887]],[[807], [862], [907], [858]],[[], [], [], []]⟩,[868],[860],[908],[845],[890, 805, 873, 796, 863, 856, 823, 865, 880, 789, 864, 818, 828, 892, 870, 822, 882, 780, 833, 872, 888, 886, 778, 838, 883, 814, 821, 869, 843, 831, 854, 830, 898, 848, 852, 841, 839, 794, 850, 911, 881, 853, 867, 786, 910, 877, 855, 803, 922, 799, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[890, 805, 873, 796, 863, 856, 823],[908, 845, 890, 805]⟩
def s6Step5FrontBank : WindowBank := ⟨s6Step5EntryFRow,s6Step5EntryGRow,s6Step5EntryFvRow,s6Step5EntryGvRow⟩
def s6Step5FrontPair : WindowBank := ⟨s6Step5EntryFOut,s6Step5EntryGOut,s6Step5EntryFvOut,s6Step5EntryGvOut⟩
def s6Step5FrontHead : WindowBank := ⟨s6Step5HeadFOut,s6Step5HeadGOut,s6Step5HeadFvOut,s6Step5HeadGvOut⟩
def s6Step5FrontOut : WindowBank := ⟨s6Step5ExitFOut,s6Step5ExitGOut,s6Step5ExitFvOut,s6Step5ExitGvOut⟩
def s6Step5FrontSigmaArena : Arena := ⟨s6Step5EntryGvAfter.live∪{868},Finset.union_subset s6Step5EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step5Front_sigma : s6Step5EntryGvAfter.checkBorrow 1 [868]=some s6Step5FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step5EntryGvAfter,arenaWires]
  · rfl
theorem s6Step5Front_branch : s6Step5FrontSigmaArena.checkBorrow 1 [860]=some s6Step5HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step5FrontSigmaArena,s6Step5EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step5FrontSigmaArena,s6Step5EntryGvAfter,s6Step5HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step5Front_entry : HmrFrontEntryValid s6Step5EntryFBefore s6Step5FrontBank 256 6 ⟨256,255,7,5⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step5FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step5EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step5EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step5FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step5FrontPlan : HmrSourceFront := ⟨s6Step5EntryGvAfter,s6Step5FrontPair,(growRow 795 s6Step5EntryFFresh ++ (growRow 777 s6Step5EntryGFresh ++ (growRow 776 s6Step5EntryFvFresh ++ (growRow 775 s6Step5EntryGvFresh ++ [])))),s6Step5FrontSigmaArena,[868],s6Step5HeadGBefore,[860],
  s6Step5HeadFvAfter,s6Step5FrontHead,(growRow 777 s6Step5HeadGFresh ++ (growRow 795 s6Step5HeadFFresh ++ (growRow 775 s6Step5HeadGvFresh ++ (growRow 776 s6Step5HeadFvFresh ++ [])))),s6Step5F4Plan,s6Step5CounterDuring,s6Step5CounterWork,s6Step5ExitGvAfter,s6Step5FrontOut,(shrinkRow 777 s6Step5ExitGExtra ++ (shrinkRow 795 s6Step5ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step5ExitGvExtra ++ []))))⟩
theorem s6Step5Front_checked : compileHmrSourceFrontLog s6Step5EntryFBefore s6Step5FrontBank 256 6 ⟨256,255,7,5⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step5FrontLog=some s6Step5FrontPlan := by
  have pairEq : s6Step5FrontPair=⟨s6Step5HeadFRow,s6Step5HeadGRow,s6Step5HeadFvRow,s6Step5HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step5FrontHead=⟨s6Step5ExitFRow,s6Step5ExitGRow,s6Step5ExitFvRow,s6Step5ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step5Add0A=s6Step5FrontHead.f.wires := by decide +kernel
  have gEq : s6Step5Add0B=s6Step5FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step5Add1A=s6Step5FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step5Add1B=s6Step5FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step5EntryFBefore s6Step5FrontBank 256 6 ⟨256,255,7,5⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step5FrontLog s6Step5FrontPlan
  · exact s6Step5Front_entry
  · exact s6Step5EntryBank_checked
  · exact s6Step5Front_sigma
  · rfl
  · exact s6Step5Front_branch
  · rfl
  · simpa only [s6Step5FrontPlan,pairEq] using s6Step5HeadBank_checked
  · simpa only [s6Step5FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step5F4_checked
  · exact s6Step5Counter_checked
  · rfl
  · simpa only [s6Step5FrontPlan,headEq] using s6Step5ExitBank_checked
def s6Step6FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [860], [], [868, 887]],[[813], [807], [908], [845]],[[], [], [], []]⟩,[907],[862],[890],[805],[873, 796, 863, 856, 823, 865, 880, 789, 864, 818, 828, 892, 870, 822, 882, 780, 833, 872, 888, 886, 778, 838, 883, 814, 821, 869, 843, 831, 854, 830, 898, 848, 852, 841, 839, 794, 850, 911, 881, 853, 867, 786, 910, 877, 855, 803, 922, 799, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[873, 796, 863, 856, 823, 865, 880, 789],[890, 805, 873, 796]⟩
def s6Step6FrontBank : WindowBank := ⟨s6Step6EntryFRow,s6Step6EntryGRow,s6Step6EntryFvRow,s6Step6EntryGvRow⟩
def s6Step6FrontPair : WindowBank := ⟨s6Step6EntryFOut,s6Step6EntryGOut,s6Step6EntryFvOut,s6Step6EntryGvOut⟩
def s6Step6FrontHead : WindowBank := ⟨s6Step6HeadFOut,s6Step6HeadGOut,s6Step6HeadFvOut,s6Step6HeadGvOut⟩
def s6Step6FrontOut : WindowBank := ⟨s6Step6ExitFOut,s6Step6ExitGOut,s6Step6ExitFvOut,s6Step6ExitGvOut⟩
def s6Step6FrontSigmaArena : Arena := ⟨s6Step6EntryGvAfter.live∪{907},Finset.union_subset s6Step6EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step6Front_sigma : s6Step6EntryGvAfter.checkBorrow 1 [907]=some s6Step6FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step6EntryGvAfter,arenaWires]
  · rfl
theorem s6Step6Front_branch : s6Step6FrontSigmaArena.checkBorrow 1 [862]=some s6Step6HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step6FrontSigmaArena,s6Step6EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step6FrontSigmaArena,s6Step6EntryGvAfter,s6Step6HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step6Front_entry : HmrFrontEntryValid s6Step6EntryFBefore s6Step6FrontBank 256 7 ⟨256,255,8,6⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step6FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step6EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step6EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (857≤q ∧ q<860) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step6FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step6FrontPlan : HmrSourceFront := ⟨s6Step6EntryGvAfter,s6Step6FrontPair,(growRow 795 s6Step6EntryFFresh ++ (growRow 777 s6Step6EntryGFresh ++ (growRow 776 s6Step6EntryFvFresh ++ (growRow 775 s6Step6EntryGvFresh ++ [])))),s6Step6FrontSigmaArena,[907],s6Step6HeadGBefore,[862],
  s6Step6HeadFvAfter,s6Step6FrontHead,(growRow 777 s6Step6HeadGFresh ++ (growRow 795 s6Step6HeadFFresh ++ (growRow 775 s6Step6HeadGvFresh ++ (growRow 776 s6Step6HeadFvFresh ++ [])))),s6Step6F4Plan,s6Step6CounterDuring,s6Step6CounterWork,s6Step6ExitGvAfter,s6Step6FrontOut,(shrinkRow 777 s6Step6ExitGExtra ++ (shrinkRow 795 s6Step6ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step6ExitGvExtra ++ []))))⟩
theorem s6Step6Front_checked : compileHmrSourceFrontLog s6Step6EntryFBefore s6Step6FrontBank 256 7 ⟨256,255,8,6⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step6FrontLog=some s6Step6FrontPlan := by
  have pairEq : s6Step6FrontPair=⟨s6Step6HeadFRow,s6Step6HeadGRow,s6Step6HeadFvRow,s6Step6HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step6FrontHead=⟨s6Step6ExitFRow,s6Step6ExitGRow,s6Step6ExitFvRow,s6Step6ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step6Add0A=s6Step6FrontHead.f.wires := by decide +kernel
  have gEq : s6Step6Add0B=s6Step6FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step6Add1A=s6Step6FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step6Add1B=s6Step6FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step6EntryFBefore s6Step6FrontBank 256 7 ⟨256,255,8,6⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step6FrontLog s6Step6FrontPlan
  · exact s6Step6Front_entry
  · exact s6Step6EntryBank_checked
  · exact s6Step6Front_sigma
  · rfl
  · exact s6Step6Front_branch
  · rfl
  · simpa only [s6Step6FrontPlan,pairEq] using s6Step6HeadBank_checked
  · simpa only [s6Step6FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step6F4_checked
  · exact s6Step6Counter_checked
  · rfl
  · simpa only [s6Step6FrontPlan,headEq] using s6Step6ExitBank_checked
def s6Step7FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [862], [], [907, 887]],[[860], [813], [890], [805]],[[], [], [], []]⟩,[908],[807],[873],[796],[863, 856, 823, 865, 880, 789, 864, 818, 828, 892, 870, 822, 882, 780, 833, 872, 888, 886, 778, 838, 883, 814, 821, 869, 843, 831, 854, 830, 898, 848, 852, 841, 839, 794, 850, 911, 881, 853, 867, 786, 910, 877, 855, 803, 922, 799, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[863, 856, 823, 865, 880, 789, 864, 818, 828],[873, 796, 863, 856]⟩
def s6Step7FrontBank : WindowBank := ⟨s6Step7EntryFRow,s6Step7EntryGRow,s6Step7EntryFvRow,s6Step7EntryGvRow⟩
def s6Step7FrontPair : WindowBank := ⟨s6Step7EntryFOut,s6Step7EntryGOut,s6Step7EntryFvOut,s6Step7EntryGvOut⟩
def s6Step7FrontHead : WindowBank := ⟨s6Step7HeadFOut,s6Step7HeadGOut,s6Step7HeadFvOut,s6Step7HeadGvOut⟩
def s6Step7FrontOut : WindowBank := ⟨s6Step7ExitFOut,s6Step7ExitGOut,s6Step7ExitFvOut,s6Step7ExitGvOut⟩
def s6Step7FrontSigmaArena : Arena := ⟨s6Step7EntryGvAfter.live∪{908},Finset.union_subset s6Step7EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step7Front_sigma : s6Step7EntryGvAfter.checkBorrow 1 [908]=some s6Step7FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step7EntryGvAfter,arenaWires]
  · rfl
theorem s6Step7Front_branch : s6Step7FrontSigmaArena.checkBorrow 1 [807]=some s6Step7HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step7FrontSigmaArena,s6Step7EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step7FrontSigmaArena,s6Step7EntryGvAfter,s6Step7HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step7Front_entry : HmrFrontEntryValid s6Step7EntryFBefore s6Step7FrontBank 256 8 ⟨256,255,9,7⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step7FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step7EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step7EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step7FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step7FrontPlan : HmrSourceFront := ⟨s6Step7EntryGvAfter,s6Step7FrontPair,(growRow 795 s6Step7EntryFFresh ++ (growRow 777 s6Step7EntryGFresh ++ (growRow 776 s6Step7EntryFvFresh ++ (growRow 775 s6Step7EntryGvFresh ++ [])))),s6Step7FrontSigmaArena,[908],s6Step7HeadGBefore,[807],
  s6Step7HeadFvAfter,s6Step7FrontHead,(growRow 777 s6Step7HeadGFresh ++ (growRow 795 s6Step7HeadFFresh ++ (growRow 775 s6Step7HeadGvFresh ++ (growRow 776 s6Step7HeadFvFresh ++ [])))),s6Step7F4Plan,s6Step7CounterDuring,s6Step7CounterWork,s6Step7ExitGvAfter,s6Step7FrontOut,(shrinkRow 777 s6Step7ExitGExtra ++ (shrinkRow 795 s6Step7ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step7ExitGvExtra ++ []))))⟩
theorem s6Step7Front_checked : compileHmrSourceFrontLog s6Step7EntryFBefore s6Step7FrontBank 256 8 ⟨256,255,9,7⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step7FrontLog=some s6Step7FrontPlan := by
  have pairEq : s6Step7FrontPair=⟨s6Step7HeadFRow,s6Step7HeadGRow,s6Step7HeadFvRow,s6Step7HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step7FrontHead=⟨s6Step7ExitFRow,s6Step7ExitGRow,s6Step7ExitFvRow,s6Step7ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step7Add0A=s6Step7FrontHead.f.wires := by decide +kernel
  have gEq : s6Step7Add0B=s6Step7FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step7Add1A=s6Step7FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step7Add1B=s6Step7FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step7EntryFBefore s6Step7FrontBank 256 8 ⟨256,255,9,7⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step7FrontLog s6Step7FrontPlan
  · exact s6Step7Front_entry
  · exact s6Step7EntryBank_checked
  · exact s6Step7Front_sigma
  · rfl
  · exact s6Step7Front_branch
  · rfl
  · simpa only [s6Step7FrontPlan,pairEq] using s6Step7HeadBank_checked
  · simpa only [s6Step7FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step7F4_checked
  · exact s6Step7Counter_checked
  · rfl
  · simpa only [s6Step7FrontPlan,headEq] using s6Step7ExitBank_checked
def s6Step8FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [807], [], [908, 887]],[[862], [860], [873], [796]],[[], [], [], []]⟩,[890],[813],[863],[856],[823, 865, 880, 789, 864, 818, 828, 892, 870, 822, 882, 780, 833, 872, 888, 886, 778, 838, 883, 814, 821, 869, 843, 831, 854, 830, 898, 848, 852, 841, 839, 794, 850, 911, 881, 853, 867, 786, 910, 877, 855, 803, 922, 799, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[823, 865, 880, 789, 864, 818, 828, 892, 870, 822],[863, 856, 823, 865]⟩
def s6Step8FrontBank : WindowBank := ⟨s6Step8EntryFRow,s6Step8EntryGRow,s6Step8EntryFvRow,s6Step8EntryGvRow⟩
def s6Step8FrontPair : WindowBank := ⟨s6Step8EntryFOut,s6Step8EntryGOut,s6Step8EntryFvOut,s6Step8EntryGvOut⟩
def s6Step8FrontHead : WindowBank := ⟨s6Step8HeadFOut,s6Step8HeadGOut,s6Step8HeadFvOut,s6Step8HeadGvOut⟩
def s6Step8FrontOut : WindowBank := ⟨s6Step8ExitFOut,s6Step8ExitGOut,s6Step8ExitFvOut,s6Step8ExitGvOut⟩
def s6Step8FrontSigmaArena : Arena := ⟨s6Step8EntryGvAfter.live∪{890},Finset.union_subset s6Step8EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step8Front_sigma : s6Step8EntryGvAfter.checkBorrow 1 [890]=some s6Step8FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step8EntryGvAfter,arenaWires]
  · rfl
theorem s6Step8Front_branch : s6Step8FrontSigmaArena.checkBorrow 1 [813]=some s6Step8HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step8FrontSigmaArena,s6Step8EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step8FrontSigmaArena,s6Step8EntryGvAfter,s6Step8HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step8Front_entry : HmrFrontEntryValid s6Step8EntryFBefore s6Step8FrontBank 256 9 ⟨256,255,10,8⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step8FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step8EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step8EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step8FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step8FrontPlan : HmrSourceFront := ⟨s6Step8EntryGvAfter,s6Step8FrontPair,(growRow 795 s6Step8EntryFFresh ++ (growRow 777 s6Step8EntryGFresh ++ (growRow 776 s6Step8EntryFvFresh ++ (growRow 775 s6Step8EntryGvFresh ++ [])))),s6Step8FrontSigmaArena,[890],s6Step8HeadGBefore,[813],
  s6Step8HeadFvAfter,s6Step8FrontHead,(growRow 777 s6Step8HeadGFresh ++ (growRow 795 s6Step8HeadFFresh ++ (growRow 775 s6Step8HeadGvFresh ++ (growRow 776 s6Step8HeadFvFresh ++ [])))),s6Step8F4Plan,s6Step8CounterDuring,s6Step8CounterWork,s6Step8ExitGvAfter,s6Step8FrontOut,(shrinkRow 777 s6Step8ExitGExtra ++ (shrinkRow 795 s6Step8ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step8ExitGvExtra ++ []))))⟩
theorem s6Step8Front_checked : compileHmrSourceFrontLog s6Step8EntryFBefore s6Step8FrontBank 256 9 ⟨256,255,10,8⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step8FrontLog=some s6Step8FrontPlan := by
  have pairEq : s6Step8FrontPair=⟨s6Step8HeadFRow,s6Step8HeadGRow,s6Step8HeadFvRow,s6Step8HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step8FrontHead=⟨s6Step8ExitFRow,s6Step8ExitGRow,s6Step8ExitFvRow,s6Step8ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step8Add0A=s6Step8FrontHead.f.wires := by decide +kernel
  have gEq : s6Step8Add0B=s6Step8FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step8Add1A=s6Step8FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step8Add1B=s6Step8FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step8EntryFBefore s6Step8FrontBank 256 9 ⟨256,255,10,8⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step8FrontLog s6Step8FrontPlan
  · exact s6Step8Front_entry
  · exact s6Step8EntryBank_checked
  · exact s6Step8Front_sigma
  · rfl
  · exact s6Step8Front_branch
  · rfl
  · simpa only [s6Step8FrontPlan,pairEq] using s6Step8HeadBank_checked
  · simpa only [s6Step8FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step8F4_checked
  · exact s6Step8Counter_checked
  · rfl
  · simpa only [s6Step8FrontPlan,headEq] using s6Step8ExitBank_checked
def s6Step9FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [813], [], [890, 887]],[[807], [862], [863], [856]],[[], [], [], []]⟩,[873],[860],[823],[865],[880, 789, 864, 818, 828, 892, 870, 822, 882, 780, 833, 872, 888, 886, 778, 838, 883, 814, 821, 869, 843, 831, 854, 830, 898, 848, 852, 841, 839, 794, 850, 911, 881, 853, 867, 786, 910, 877, 855, 803, 922, 799, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[880, 789, 864, 818, 828, 892, 870, 822, 882, 780, 833],[823, 865, 880, 789]⟩
def s6Step9FrontBank : WindowBank := ⟨s6Step9EntryFRow,s6Step9EntryGRow,s6Step9EntryFvRow,s6Step9EntryGvRow⟩
def s6Step9FrontPair : WindowBank := ⟨s6Step9EntryFOut,s6Step9EntryGOut,s6Step9EntryFvOut,s6Step9EntryGvOut⟩
def s6Step9FrontHead : WindowBank := ⟨s6Step9HeadFOut,s6Step9HeadGOut,s6Step9HeadFvOut,s6Step9HeadGvOut⟩
def s6Step9FrontOut : WindowBank := ⟨s6Step9ExitFOut,s6Step9ExitGOut,s6Step9ExitFvOut,s6Step9ExitGvOut⟩
def s6Step9FrontSigmaArena : Arena := ⟨s6Step9EntryGvAfter.live∪{873},Finset.union_subset s6Step9EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step9Front_sigma : s6Step9EntryGvAfter.checkBorrow 1 [873]=some s6Step9FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step9EntryGvAfter,arenaWires]
  · rfl
theorem s6Step9Front_branch : s6Step9FrontSigmaArena.checkBorrow 1 [860]=some s6Step9HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step9FrontSigmaArena,s6Step9EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step9FrontSigmaArena,s6Step9EntryGvAfter,s6Step9HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step9Front_entry : HmrFrontEntryValid s6Step9EntryFBefore s6Step9FrontBank 256 10 ⟨256,255,11,9⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step9FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step9EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step9EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step9FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step9FrontPlan : HmrSourceFront := ⟨s6Step9EntryGvAfter,s6Step9FrontPair,(growRow 795 s6Step9EntryFFresh ++ (growRow 777 s6Step9EntryGFresh ++ (growRow 776 s6Step9EntryFvFresh ++ (growRow 775 s6Step9EntryGvFresh ++ [])))),s6Step9FrontSigmaArena,[873],s6Step9HeadGBefore,[860],
  s6Step9HeadFvAfter,s6Step9FrontHead,(growRow 777 s6Step9HeadGFresh ++ (growRow 795 s6Step9HeadFFresh ++ (growRow 775 s6Step9HeadGvFresh ++ (growRow 776 s6Step9HeadFvFresh ++ [])))),s6Step9F4Plan,s6Step9CounterDuring,s6Step9CounterWork,s6Step9ExitGvAfter,s6Step9FrontOut,(shrinkRow 777 s6Step9ExitGExtra ++ (shrinkRow 795 s6Step9ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step9ExitGvExtra ++ []))))⟩
theorem s6Step9Front_checked : compileHmrSourceFrontLog s6Step9EntryFBefore s6Step9FrontBank 256 10 ⟨256,255,11,9⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step9FrontLog=some s6Step9FrontPlan := by
  have pairEq : s6Step9FrontPair=⟨s6Step9HeadFRow,s6Step9HeadGRow,s6Step9HeadFvRow,s6Step9HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step9FrontHead=⟨s6Step9ExitFRow,s6Step9ExitGRow,s6Step9ExitFvRow,s6Step9ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step9Add0A=s6Step9FrontHead.f.wires := by decide +kernel
  have gEq : s6Step9Add0B=s6Step9FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step9Add1A=s6Step9FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step9Add1B=s6Step9FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step9EntryFBefore s6Step9FrontBank 256 10 ⟨256,255,11,9⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step9FrontLog s6Step9FrontPlan
  · exact s6Step9Front_entry
  · exact s6Step9EntryBank_checked
  · exact s6Step9Front_sigma
  · rfl
  · exact s6Step9Front_branch
  · rfl
  · simpa only [s6Step9FrontPlan,pairEq] using s6Step9HeadBank_checked
  · simpa only [s6Step9FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step9F4_checked
  · exact s6Step9Counter_checked
  · rfl
  · simpa only [s6Step9FrontPlan,headEq] using s6Step9ExitBank_checked
def s6Step10FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [860], [], [873, 887]],[[813], [807], [823], [865]],[[], [], [], []]⟩,[863],[862],[880],[789],[864, 818, 828, 892, 822, 882, 780, 833, 872, 888, 886, 778, 838, 883, 814, 821, 869, 843, 831, 854, 830, 898, 848, 852, 841, 839, 794, 850, 911, 881, 853, 867, 786, 910, 877, 855, 803, 922, 799, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[864, 818, 828, 892, 822, 882, 780, 833, 872, 888, 886, 778],[880, 789, 864, 818]⟩
def s6Step10FrontBank : WindowBank := ⟨s6Step10EntryFRow,s6Step10EntryGRow,s6Step10EntryFvRow,s6Step10EntryGvRow⟩
def s6Step10FrontPair : WindowBank := ⟨s6Step10EntryFOut,s6Step10EntryGOut,s6Step10EntryFvOut,s6Step10EntryGvOut⟩
def s6Step10FrontHead : WindowBank := ⟨s6Step10HeadFOut,s6Step10HeadGOut,s6Step10HeadFvOut,s6Step10HeadGvOut⟩
def s6Step10FrontOut : WindowBank := ⟨s6Step10ExitFOut,s6Step10ExitGOut,s6Step10ExitFvOut,s6Step10ExitGvOut⟩
def s6Step10FrontSigmaArena : Arena := ⟨s6Step10EntryGvAfter.live∪{863},Finset.union_subset s6Step10EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step10Front_sigma : s6Step10EntryGvAfter.checkBorrow 1 [863]=some s6Step10FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step10EntryGvAfter,arenaWires]
  · rfl
theorem s6Step10Front_branch : s6Step10FrontSigmaArena.checkBorrow 1 [862]=some s6Step10HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step10FrontSigmaArena,s6Step10EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step10FrontSigmaArena,s6Step10EntryGvAfter,s6Step10HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step10Front_entry : HmrFrontEntryValid s6Step10EntryFBefore s6Step10FrontBank 256 11 ⟨256,255,12,10⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step10FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step10EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step10EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (874≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step10FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step10FrontPlan : HmrSourceFront := ⟨s6Step10EntryGvAfter,s6Step10FrontPair,(growRow 795 s6Step10EntryFFresh ++ (growRow 777 s6Step10EntryGFresh ++ (growRow 776 s6Step10EntryFvFresh ++ (growRow 775 s6Step10EntryGvFresh ++ [])))),s6Step10FrontSigmaArena,[863],s6Step10HeadGBefore,[862],
  s6Step10HeadFvAfter,s6Step10FrontHead,(growRow 777 s6Step10HeadGFresh ++ (growRow 795 s6Step10HeadFFresh ++ (growRow 775 s6Step10HeadGvFresh ++ (growRow 776 s6Step10HeadFvFresh ++ [])))),s6Step10F4Plan,s6Step10CounterDuring,s6Step10CounterWork,s6Step10ExitGvAfter,s6Step10FrontOut,(shrinkRow 777 s6Step10ExitGExtra ++ (shrinkRow 795 s6Step10ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step10ExitGvExtra ++ []))))⟩
theorem s6Step10Front_checked : compileHmrSourceFrontLog s6Step10EntryFBefore s6Step10FrontBank 256 11 ⟨256,255,12,10⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step10FrontLog=some s6Step10FrontPlan := by
  have pairEq : s6Step10FrontPair=⟨s6Step10HeadFRow,s6Step10HeadGRow,s6Step10HeadFvRow,s6Step10HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step10FrontHead=⟨s6Step10ExitFRow,s6Step10ExitGRow,s6Step10ExitFvRow,s6Step10ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step10Add0A=s6Step10FrontHead.f.wires := by decide +kernel
  have gEq : s6Step10Add0B=s6Step10FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step10Add1A=s6Step10FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step10Add1B=s6Step10FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step10EntryFBefore s6Step10FrontBank 256 11 ⟨256,255,12,10⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step10FrontLog s6Step10FrontPlan
  · exact s6Step10Front_entry
  · exact s6Step10EntryBank_checked
  · exact s6Step10Front_sigma
  · rfl
  · exact s6Step10Front_branch
  · rfl
  · simpa only [s6Step10FrontPlan,pairEq] using s6Step10HeadBank_checked
  · simpa only [s6Step10FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step10F4_checked
  · exact s6Step10Counter_checked
  · rfl
  · simpa only [s6Step10FrontPlan,headEq] using s6Step10ExitBank_checked
def s6Step11FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [862], [], [863, 887]],[[860], [813], [880], [789]],[[], [], [], []]⟩,[823],[807],[864],[818],[828, 892, 822, 882, 780, 833, 872, 888, 886, 778, 838, 883, 814, 821, 869, 843, 831, 854, 830, 898, 848, 852, 841, 839, 794, 850, 911, 881, 853, 867, 786, 910, 877, 855, 803, 922, 799, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[828, 892, 822, 882, 780, 833, 872, 888, 886, 778, 838, 883, 814],[864, 818, 828, 892]⟩
def s6Step11FrontBank : WindowBank := ⟨s6Step11EntryFRow,s6Step11EntryGRow,s6Step11EntryFvRow,s6Step11EntryGvRow⟩
def s6Step11FrontPair : WindowBank := ⟨s6Step11EntryFOut,s6Step11EntryGOut,s6Step11EntryFvOut,s6Step11EntryGvOut⟩
def s6Step11FrontHead : WindowBank := ⟨s6Step11HeadFOut,s6Step11HeadGOut,s6Step11HeadFvOut,s6Step11HeadGvOut⟩
def s6Step11FrontOut : WindowBank := ⟨s6Step11ExitFOut,s6Step11ExitGOut,s6Step11ExitFvOut,s6Step11ExitGvOut⟩
def s6Step11FrontSigmaArena : Arena := ⟨s6Step11EntryGvAfter.live∪{823},Finset.union_subset s6Step11EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step11Front_sigma : s6Step11EntryGvAfter.checkBorrow 1 [823]=some s6Step11FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step11EntryGvAfter,arenaWires]
  · rfl
theorem s6Step11Front_branch : s6Step11FrontSigmaArena.checkBorrow 1 [807]=some s6Step11HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step11FrontSigmaArena,s6Step11EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step11FrontSigmaArena,s6Step11EntryGvAfter,s6Step11HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step11Front_entry : HmrFrontEntryValid s6Step11EntryFBefore s6Step11FrontBank 256 12 ⟨256,255,13,11⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step11FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step11EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step11EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step11FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step11FrontPlan : HmrSourceFront := ⟨s6Step11EntryGvAfter,s6Step11FrontPair,(growRow 795 s6Step11EntryFFresh ++ (growRow 777 s6Step11EntryGFresh ++ (growRow 776 s6Step11EntryFvFresh ++ (growRow 775 s6Step11EntryGvFresh ++ [])))),s6Step11FrontSigmaArena,[823],s6Step11HeadGBefore,[807],
  s6Step11HeadFvAfter,s6Step11FrontHead,(growRow 777 s6Step11HeadGFresh ++ (growRow 795 s6Step11HeadFFresh ++ (growRow 775 s6Step11HeadGvFresh ++ (growRow 776 s6Step11HeadFvFresh ++ [])))),s6Step11F4Plan,s6Step11CounterDuring,s6Step11CounterWork,s6Step11ExitGvAfter,s6Step11FrontOut,(shrinkRow 777 s6Step11ExitGExtra ++ (shrinkRow 795 s6Step11ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step11ExitGvExtra ++ []))))⟩
theorem s6Step11Front_checked : compileHmrSourceFrontLog s6Step11EntryFBefore s6Step11FrontBank 256 12 ⟨256,255,13,11⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step11FrontLog=some s6Step11FrontPlan := by
  have pairEq : s6Step11FrontPair=⟨s6Step11HeadFRow,s6Step11HeadGRow,s6Step11HeadFvRow,s6Step11HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step11FrontHead=⟨s6Step11ExitFRow,s6Step11ExitGRow,s6Step11ExitFvRow,s6Step11ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step11Add0A=s6Step11FrontHead.f.wires := by decide +kernel
  have gEq : s6Step11Add0B=s6Step11FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step11Add1A=s6Step11FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step11Add1B=s6Step11FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step11EntryFBefore s6Step11FrontBank 256 12 ⟨256,255,13,11⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step11FrontLog s6Step11FrontPlan
  · exact s6Step11Front_entry
  · exact s6Step11EntryBank_checked
  · exact s6Step11Front_sigma
  · rfl
  · exact s6Step11Front_branch
  · rfl
  · simpa only [s6Step11FrontPlan,pairEq] using s6Step11HeadBank_checked
  · simpa only [s6Step11FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step11F4_checked
  · exact s6Step11Counter_checked
  · rfl
  · simpa only [s6Step11FrontPlan,headEq] using s6Step11ExitBank_checked
def s6Step12FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [807], [], [823, 887]],[[862], [860], [864], [818]],[[], [], [], []]⟩,[880],[813],[828],[892],[822, 882, 780, 833, 888, 886, 778, 838, 883, 814, 821, 869, 843, 831, 854, 830, 898, 848, 852, 841, 839, 794, 850, 911, 881, 853, 867, 786, 910, 877, 855, 803, 922, 799, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[822, 882, 780, 833, 888, 886, 778, 838, 883, 814, 821, 869, 843, 831],[828, 892, 822, 882]⟩
def s6Step12FrontBank : WindowBank := ⟨s6Step12EntryFRow,s6Step12EntryGRow,s6Step12EntryFvRow,s6Step12EntryGvRow⟩
def s6Step12FrontPair : WindowBank := ⟨s6Step12EntryFOut,s6Step12EntryGOut,s6Step12EntryFvOut,s6Step12EntryGvOut⟩
def s6Step12FrontHead : WindowBank := ⟨s6Step12HeadFOut,s6Step12HeadGOut,s6Step12HeadFvOut,s6Step12HeadGvOut⟩
def s6Step12FrontOut : WindowBank := ⟨s6Step12ExitFOut,s6Step12ExitGOut,s6Step12ExitFvOut,s6Step12ExitGvOut⟩
def s6Step12FrontSigmaArena : Arena := ⟨s6Step12EntryGvAfter.live∪{880},Finset.union_subset s6Step12EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step12Front_sigma : s6Step12EntryGvAfter.checkBorrow 1 [880]=some s6Step12FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step12EntryGvAfter,arenaWires]
  · rfl
theorem s6Step12Front_branch : s6Step12FrontSigmaArena.checkBorrow 1 [813]=some s6Step12HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step12FrontSigmaArena,s6Step12EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step12FrontSigmaArena,s6Step12EntryGvAfter,s6Step12HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step12Front_entry : HmrFrontEntryValid s6Step12EntryFBefore s6Step12FrontBank 256 13 ⟨256,255,14,12⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step12FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step12EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step12EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step12FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step12FrontPlan : HmrSourceFront := ⟨s6Step12EntryGvAfter,s6Step12FrontPair,(growRow 795 s6Step12EntryFFresh ++ (growRow 777 s6Step12EntryGFresh ++ (growRow 776 s6Step12EntryFvFresh ++ (growRow 775 s6Step12EntryGvFresh ++ [])))),s6Step12FrontSigmaArena,[880],s6Step12HeadGBefore,[813],
  s6Step12HeadFvAfter,s6Step12FrontHead,(growRow 777 s6Step12HeadGFresh ++ (growRow 795 s6Step12HeadFFresh ++ (growRow 775 s6Step12HeadGvFresh ++ (growRow 776 s6Step12HeadFvFresh ++ [])))),s6Step12F4Plan,s6Step12CounterDuring,s6Step12CounterWork,s6Step12ExitGvAfter,s6Step12FrontOut,(shrinkRow 777 s6Step12ExitGExtra ++ (shrinkRow 795 s6Step12ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step12ExitGvExtra ++ []))))⟩
theorem s6Step12Front_checked : compileHmrSourceFrontLog s6Step12EntryFBefore s6Step12FrontBank 256 13 ⟨256,255,14,12⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step12FrontLog=some s6Step12FrontPlan := by
  have pairEq : s6Step12FrontPair=⟨s6Step12HeadFRow,s6Step12HeadGRow,s6Step12HeadFvRow,s6Step12HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step12FrontHead=⟨s6Step12ExitFRow,s6Step12ExitGRow,s6Step12ExitFvRow,s6Step12ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step12Add0A=s6Step12FrontHead.f.wires := by decide +kernel
  have gEq : s6Step12Add0B=s6Step12FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step12Add1A=s6Step12FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step12Add1B=s6Step12FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step12EntryFBefore s6Step12FrontBank 256 13 ⟨256,255,14,12⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step12FrontLog s6Step12FrontPlan
  · exact s6Step12Front_entry
  · exact s6Step12EntryBank_checked
  · exact s6Step12Front_sigma
  · rfl
  · exact s6Step12Front_branch
  · rfl
  · simpa only [s6Step12FrontPlan,pairEq] using s6Step12HeadBank_checked
  · simpa only [s6Step12FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step12F4_checked
  · exact s6Step12Counter_checked
  · rfl
  · simpa only [s6Step12FrontPlan,headEq] using s6Step12ExitBank_checked
def s6Step13FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [813], [], [880, 887]],[[807], [862], [828], [892]],[[], [], [], []]⟩,[864],[860],[822],[882],[780, 833, 888, 886, 778, 838, 883, 814, 821, 869, 843, 831, 854, 830, 898, 848, 852, 841, 839, 794, 850, 911, 881, 853, 867, 786, 910, 877, 855, 803, 922, 799, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[780, 833, 888, 886, 778, 838, 883, 814, 821, 869, 843, 831, 854, 830, 898],[822, 882, 780, 833]⟩
def s6Step13FrontBank : WindowBank := ⟨s6Step13EntryFRow,s6Step13EntryGRow,s6Step13EntryFvRow,s6Step13EntryGvRow⟩
def s6Step13FrontPair : WindowBank := ⟨s6Step13EntryFOut,s6Step13EntryGOut,s6Step13EntryFvOut,s6Step13EntryGvOut⟩
def s6Step13FrontHead : WindowBank := ⟨s6Step13HeadFOut,s6Step13HeadGOut,s6Step13HeadFvOut,s6Step13HeadGvOut⟩
def s6Step13FrontOut : WindowBank := ⟨s6Step13ExitFOut,s6Step13ExitGOut,s6Step13ExitFvOut,s6Step13ExitGvOut⟩
def s6Step13FrontSigmaArena : Arena := ⟨s6Step13EntryGvAfter.live∪{864},Finset.union_subset s6Step13EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step13Front_sigma : s6Step13EntryGvAfter.checkBorrow 1 [864]=some s6Step13FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step13EntryGvAfter,arenaWires]
  · rfl
theorem s6Step13Front_branch : s6Step13FrontSigmaArena.checkBorrow 1 [860]=some s6Step13HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step13FrontSigmaArena,s6Step13EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step13FrontSigmaArena,s6Step13EntryGvAfter,s6Step13HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step13Front_entry : HmrFrontEntryValid s6Step13EntryFBefore s6Step13FrontBank 256 14 ⟨256,255,15,13⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step13FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step13EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step13EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step13FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step13FrontPlan : HmrSourceFront := ⟨s6Step13EntryGvAfter,s6Step13FrontPair,(growRow 795 s6Step13EntryFFresh ++ (growRow 777 s6Step13EntryGFresh ++ (growRow 776 s6Step13EntryFvFresh ++ (growRow 775 s6Step13EntryGvFresh ++ [])))),s6Step13FrontSigmaArena,[864],s6Step13HeadGBefore,[860],
  s6Step13HeadFvAfter,s6Step13FrontHead,(growRow 777 s6Step13HeadGFresh ++ (growRow 795 s6Step13HeadFFresh ++ (growRow 775 s6Step13HeadGvFresh ++ (growRow 776 s6Step13HeadFvFresh ++ [])))),s6Step13F4Plan,s6Step13CounterDuring,s6Step13CounterWork,s6Step13ExitGvAfter,s6Step13FrontOut,(shrinkRow 777 s6Step13ExitGExtra ++ (shrinkRow 795 s6Step13ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step13ExitGvExtra ++ []))))⟩
theorem s6Step13Front_checked : compileHmrSourceFrontLog s6Step13EntryFBefore s6Step13FrontBank 256 14 ⟨256,255,15,13⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step13FrontLog=some s6Step13FrontPlan := by
  have pairEq : s6Step13FrontPair=⟨s6Step13HeadFRow,s6Step13HeadGRow,s6Step13HeadFvRow,s6Step13HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step13FrontHead=⟨s6Step13ExitFRow,s6Step13ExitGRow,s6Step13ExitFvRow,s6Step13ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step13Add0A=s6Step13FrontHead.f.wires := by decide +kernel
  have gEq : s6Step13Add0B=s6Step13FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step13Add1A=s6Step13FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step13Add1B=s6Step13FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step13EntryFBefore s6Step13FrontBank 256 14 ⟨256,255,15,13⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step13FrontLog s6Step13FrontPlan
  · exact s6Step13Front_entry
  · exact s6Step13EntryBank_checked
  · exact s6Step13Front_sigma
  · rfl
  · exact s6Step13Front_branch
  · rfl
  · simpa only [s6Step13FrontPlan,pairEq] using s6Step13HeadBank_checked
  · simpa only [s6Step13FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step13F4_checked
  · exact s6Step13Counter_checked
  · rfl
  · simpa only [s6Step13FrontPlan,headEq] using s6Step13ExitBank_checked
def s6Step14FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [860], [], [864, 887]],[[813], [807], [822], [882]],[[], [], [], []]⟩,[828],[862],[780],[833],[888, 886, 778, 838, 814, 821, 869, 843, 831, 854, 830, 898, 848, 852, 841, 839, 794, 850, 911, 881, 853, 867, 786, 910, 877, 855, 803, 922, 799, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[888, 886, 778, 838, 814, 821, 869, 843, 831, 854, 830, 898, 848, 852, 841, 839],[780, 833, 888, 886]⟩
def s6Step14FrontBank : WindowBank := ⟨s6Step14EntryFRow,s6Step14EntryGRow,s6Step14EntryFvRow,s6Step14EntryGvRow⟩
def s6Step14FrontPair : WindowBank := ⟨s6Step14EntryFOut,s6Step14EntryGOut,s6Step14EntryFvOut,s6Step14EntryGvOut⟩
def s6Step14FrontHead : WindowBank := ⟨s6Step14HeadFOut,s6Step14HeadGOut,s6Step14HeadFvOut,s6Step14HeadGvOut⟩
def s6Step14FrontOut : WindowBank := ⟨s6Step14ExitFOut,s6Step14ExitGOut,s6Step14ExitFvOut,s6Step14ExitGvOut⟩
def s6Step14FrontSigmaArena : Arena := ⟨s6Step14EntryGvAfter.live∪{828},Finset.union_subset s6Step14EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step14Front_sigma : s6Step14EntryGvAfter.checkBorrow 1 [828]=some s6Step14FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step14EntryGvAfter,arenaWires]
  · rfl
theorem s6Step14Front_branch : s6Step14FrontSigmaArena.checkBorrow 1 [862]=some s6Step14HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step14FrontSigmaArena,s6Step14EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step14FrontSigmaArena,s6Step14EntryGvAfter,s6Step14HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step14Front_entry : HmrFrontEntryValid s6Step14EntryFBefore s6Step14FrontBank 256 15 ⟨256,255,16,14⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step14FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step14EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step14EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (883≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step14FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step14FrontPlan : HmrSourceFront := ⟨s6Step14EntryGvAfter,s6Step14FrontPair,(growRow 795 s6Step14EntryFFresh ++ (growRow 777 s6Step14EntryGFresh ++ (growRow 776 s6Step14EntryFvFresh ++ (growRow 775 s6Step14EntryGvFresh ++ [])))),s6Step14FrontSigmaArena,[828],s6Step14HeadGBefore,[862],
  s6Step14HeadFvAfter,s6Step14FrontHead,(growRow 777 s6Step14HeadGFresh ++ (growRow 795 s6Step14HeadFFresh ++ (growRow 775 s6Step14HeadGvFresh ++ (growRow 776 s6Step14HeadFvFresh ++ [])))),s6Step14F4Plan,s6Step14CounterDuring,s6Step14CounterWork,s6Step14ExitGvAfter,s6Step14FrontOut,(shrinkRow 777 s6Step14ExitGExtra ++ (shrinkRow 795 s6Step14ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step14ExitGvExtra ++ []))))⟩
theorem s6Step14Front_checked : compileHmrSourceFrontLog s6Step14EntryFBefore s6Step14FrontBank 256 15 ⟨256,255,16,14⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step14FrontLog=some s6Step14FrontPlan := by
  have pairEq : s6Step14FrontPair=⟨s6Step14HeadFRow,s6Step14HeadGRow,s6Step14HeadFvRow,s6Step14HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step14FrontHead=⟨s6Step14ExitFRow,s6Step14ExitGRow,s6Step14ExitFvRow,s6Step14ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step14Add0A=s6Step14FrontHead.f.wires := by decide +kernel
  have gEq : s6Step14Add0B=s6Step14FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step14Add1A=s6Step14FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step14Add1B=s6Step14FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step14EntryFBefore s6Step14FrontBank 256 15 ⟨256,255,16,14⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step14FrontLog s6Step14FrontPlan
  · exact s6Step14Front_entry
  · exact s6Step14EntryBank_checked
  · exact s6Step14Front_sigma
  · rfl
  · exact s6Step14Front_branch
  · rfl
  · simpa only [s6Step14FrontPlan,pairEq] using s6Step14HeadBank_checked
  · simpa only [s6Step14FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step14F4_checked
  · exact s6Step14Counter_checked
  · rfl
  · simpa only [s6Step14FrontPlan,headEq] using s6Step14ExitBank_checked
def s6Step15FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [862], [], [828, 887]],[[860], [813], [780], [833]],[[], [], [], []]⟩,[822],[807],[888],[886],[778, 838, 814, 821, 869, 843, 831, 854, 830, 898, 848, 852, 841, 839, 794, 850, 911, 881, 853, 867, 786, 910, 877, 855, 803, 922, 799, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[778, 838, 814, 821, 869, 843, 831, 854, 830, 898, 848, 852, 841, 839, 794, 850, 911],[888, 886, 778, 838]⟩
def s6Step15FrontBank : WindowBank := ⟨s6Step15EntryFRow,s6Step15EntryGRow,s6Step15EntryFvRow,s6Step15EntryGvRow⟩
def s6Step15FrontPair : WindowBank := ⟨s6Step15EntryFOut,s6Step15EntryGOut,s6Step15EntryFvOut,s6Step15EntryGvOut⟩
def s6Step15FrontHead : WindowBank := ⟨s6Step15HeadFOut,s6Step15HeadGOut,s6Step15HeadFvOut,s6Step15HeadGvOut⟩
def s6Step15FrontOut : WindowBank := ⟨s6Step15ExitFOut,s6Step15ExitGOut,s6Step15ExitFvOut,s6Step15ExitGvOut⟩
def s6Step15FrontSigmaArena : Arena := ⟨s6Step15EntryGvAfter.live∪{822},Finset.union_subset s6Step15EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step15Front_sigma : s6Step15EntryGvAfter.checkBorrow 1 [822]=some s6Step15FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step15EntryGvAfter,arenaWires]
  · rfl
theorem s6Step15Front_branch : s6Step15FrontSigmaArena.checkBorrow 1 [807]=some s6Step15HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step15FrontSigmaArena,s6Step15EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step15FrontSigmaArena,s6Step15EntryGvAfter,s6Step15HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step15Front_entry : HmrFrontEntryValid s6Step15EntryFBefore s6Step15FrontBank 256 16 ⟨256,255,17,15⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step15FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step15EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step15EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step15FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step15FrontPlan : HmrSourceFront := ⟨s6Step15EntryGvAfter,s6Step15FrontPair,(growRow 795 s6Step15EntryFFresh ++ (growRow 777 s6Step15EntryGFresh ++ (growRow 776 s6Step15EntryFvFresh ++ (growRow 775 s6Step15EntryGvFresh ++ [])))),s6Step15FrontSigmaArena,[822],s6Step15HeadGBefore,[807],
  s6Step15HeadFvAfter,s6Step15FrontHead,(growRow 777 s6Step15HeadGFresh ++ (growRow 795 s6Step15HeadFFresh ++ (growRow 775 s6Step15HeadGvFresh ++ (growRow 776 s6Step15HeadFvFresh ++ [])))),s6Step15F4Plan,s6Step15CounterDuring,s6Step15CounterWork,s6Step15ExitGvAfter,s6Step15FrontOut,(shrinkRow 777 s6Step15ExitGExtra ++ (shrinkRow 795 s6Step15ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step15ExitGvExtra ++ []))))⟩
theorem s6Step15Front_checked : compileHmrSourceFrontLog s6Step15EntryFBefore s6Step15FrontBank 256 16 ⟨256,255,17,15⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step15FrontLog=some s6Step15FrontPlan := by
  have pairEq : s6Step15FrontPair=⟨s6Step15HeadFRow,s6Step15HeadGRow,s6Step15HeadFvRow,s6Step15HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step15FrontHead=⟨s6Step15ExitFRow,s6Step15ExitGRow,s6Step15ExitFvRow,s6Step15ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step15Add0A=s6Step15FrontHead.f.wires := by decide +kernel
  have gEq : s6Step15Add0B=s6Step15FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step15Add1A=s6Step15FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step15Add1B=s6Step15FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step15EntryFBefore s6Step15FrontBank 256 16 ⟨256,255,17,15⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step15FrontLog s6Step15FrontPlan
  · exact s6Step15Front_entry
  · exact s6Step15EntryBank_checked
  · exact s6Step15Front_sigma
  · rfl
  · exact s6Step15Front_branch
  · rfl
  · simpa only [s6Step15FrontPlan,pairEq] using s6Step15HeadBank_checked
  · simpa only [s6Step15FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step15F4_checked
  · exact s6Step15Counter_checked
  · rfl
  · simpa only [s6Step15FrontPlan,headEq] using s6Step15ExitBank_checked
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
