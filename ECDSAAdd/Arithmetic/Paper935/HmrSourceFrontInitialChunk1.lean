import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryBank
import ECDSAAdd.Arithmetic.Paper935.HmrSourceExitBank
import ECDSAAdd.Arithmetic.Paper935.HmrSourceF4Parts
import ECDSAAdd.Arithmetic.Paper935.HmrSourceCounterParts
import ECDSAAdd.Arithmetic.Paper935.HmrFrontComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitialChunk0

namespace ECDSAAdd.Arithmetic.Paper935
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
  · norm_num [s2Step498EntryGvAfter,s2Step498EntryFAfter,arenaWires]
  · rfl
theorem s2Step498Front_branch : s2Step498FrontSigmaArena.checkBorrow 1 [916]=some s2Step498HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step498FrontSigmaArena,s2Step498EntryGvAfter,s2Step498EntryFAfter,arenaWires]
  · ext q
    simp only [s2Step498FrontSigmaArena,s2Step498EntryGvAfter,s2Step498EntryFAfter,s2Step498HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
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
  · norm_num [s6Step0EntryGvAfter,s6Step0EntryFBefore,arenaWires]
  · rfl
theorem s6Step0Front_branch : s6Step0FrontSigmaArena.checkBorrow 1 [813]=some s6Step0HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step0FrontSigmaArena,s6Step0EntryGvAfter,s6Step0EntryFBefore,arenaWires]
  · ext q
    simp only [s6Step0FrontSigmaArena,s6Step0EntryGvAfter,s6Step0EntryFBefore,s6Step0HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
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

end ECDSAAdd.Arithmetic.Paper935
